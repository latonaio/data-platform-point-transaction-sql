# data-platform-point-transaction-sql 

data-platform-point-transaction-sql は、データ連携基盤において、ポイント取引データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-point-transaction-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-point-transaction-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-point-transaction-sql-point-transaction-data.sql（データ連携基盤 ポイント取引 - ポイント取引データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
