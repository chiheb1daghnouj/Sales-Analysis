import glob
import os

import pandas as pd
import psycopg2
from sqlalchemy import create_engine


def create_database():
    # connexion to default database
    conn = psycopg2.connect(host='localhost', user='postgres', dbname='postgres', password='CHiheb 10')
    conn.set_session(autocommit=True)
    cur = conn.cursor()

    # create new database olist
    cur.execute(""" DROP DATABASE IF EXISTS olist;""")
    cur.execute("""CREATE DATABASE olist with ENCODING 'utf8' TEMPLATE template0;""")

    # close connexion to default database
    conn.close()

    # connexion to olist database
    conn = psycopg2.connect(host='localhost', user='postgres', dbname='olist', password='CHiheb 10')
    conn.set_session(autocommit=True)
    return conn, conn.cursor()


def find_csv_files(path):
    all_files = []
    for root, dirs, file in os.walk(path):
        files = glob.glob(os.path.join(root, '*.csv'))
        for f in files:
            all_files.append(os.path.abspath(f))
    print('{} csv files are found in {}'.format(len(all_files), path))
    return all_files


def file_2_table(files):
    conn_string = 'postgresql://postgres:CHiheb 10@localhost:5432/olist'
    db = create_engine(conn_string)
    conn = db.connect()
    for i, f in enumerate(files):
        df = pd.read_csv(f, delimiter=',')
        print(f'{f} dataframe created')
        print(df.head())
        df.to_sql(f'table{i}', con=conn, if_exists='replace', index=False)
        print(f'{f} table is created')
    conn.close()


if __name__ == '__main__':
    conn, cur = create_database()
    path = '/data'
    files = find_csv_files(path)
    file_2_table(files)
