# -*- coding: utf-8-with-signature -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#フレームワーク
framework1 = Framework.create(:dname => 'ラーニングアルファ', :ddescription => 'アジャイルPBLのためのアルファ')

#アルファ
alphadef1 = framework1.alpha_defs.create(:dseq => '1', :dname => '要求')
alphadef2 = framework1.alpha_defs.create(:dseq => '2', :dname => 'ソフトウェアシステム')
alphadef3 = framework1.alpha_defs.create(:dseq => '3', :dname => '仕事')
alphadef4 = framework1.alpha_defs.create(:dseq => '4', :dname => 'チーム')

#要求
statedef1 = alphadef1.state_defs.create(:dseq => '1', :dname => '構想')
statedef2 = alphadef1.state_defs.create(:dseq => '2', :dname => 'スコープ定義')
statedef3 = alphadef1.state_defs.create(:dseq => '3', :dname => '実現化')
statedef4 = alphadef1.state_defs.create(:dseq => '4', :dname => '検証済')
statedef5 = alphadef1.state_defs.create(:dseq => '5', :dname => '充足')

#statedef6 = alphadef1.state_defs.create(:dseq => '6', :dname => '検証')
#statedef7 = alphadef1.state_defs.create(:dseq => '7', :dname => '満足')

#システム
statedef6 = alphadef2.state_defs.create(:dseq => '1', :dname => 'アーキテクチャ決定')
statedef7 = alphadef2.state_defs.create(:dseq => '2', :dname => '概略設計')
statedef8 = alphadef2.state_defs.create(:dseq => '3', :dname => 'デモ可能')
statedef9 = alphadef2.state_defs.create(:dseq => '4', :dname => '利用可能')
statedef10 = alphadef2.state_defs.create(:dseq => '5', :dname => '準備完了')

#statedef13 = alphadef2.state_defs.create(:dseq => '6', :dname => 'リリース')
#statedef14 = alphadef2.state_defs.create(:dseq => '7', :dname => '運用')

# 仕事
statedef11 = alphadef3.state_defs.create(:dseq => '1', :dname => '方向付け')
statedef12 = alphadef3.state_defs.create(:dseq => '2', :dname => '環境準備')
statedef13 = alphadef3.state_defs.create(:dseq => '3', :dname => '共有・可視化')
statedef14 = alphadef3.state_defs.create(:dseq => '4', :dname => '検査・計測')
statedef15 = alphadef3.state_defs.create(:dseq => '5', :dname => '評価')

#statedef20 = alphadef3.state_defs.create(:dseq => '6', :dname => 'リリース')
#statedef21 = alphadef3.state_defs.create(:dseq => '7', :dname => '終結')

# チーム
statedef16 = alphadef4.state_defs.create(:dseq => '1', :dname => '結成')
statedef17 = alphadef4.state_defs.create(:dseq => '2', :dname => '全員参加')
statedef18 = alphadef4.state_defs.create(:dseq => '3', :dname => '情報共有')
statedef19 = alphadef4.state_defs.create(:dseq => '4', :dname => '協力')
statedef20 = alphadef4.state_defs.create(:dseq => '5', :dname => '自己改善')

#statedef27 = alphadef4.state_defs.create(:dseq => '6', :dname => '自己組織化')
#statedef28 = alphadef4.state_defs.create(:dseq => '7', :dname => '休止')

# 要求1/5 1
itemdef1 = statedef1.item_defs.create(:dseq => '1', :ddescription => 'プロダクトに名前を付けている')
itemdef2 = statedef1.item_defs.create(:dseq => '2', :ddescription => 'プロジェクトのミッション(目的)を明確にしている')
itemdef3 = statedef1.item_defs.create(:dseq => '3', :ddescription => '現状を分析し、プロダクトのユーザグループとグループ固有のニーズ・問題点を収集している')
itemdef4 = statedef1.item_defs.create(:dseq => '4', :ddescription => 'プロダクトの特徴と主要な機能(スコープ)を明確にしている')
itemdef5 = statedef1.item_defs.create(:dseq => '5', :ddescription => '開発日、終了日、マイルストーンなどの日程をオーナーと合意している')
itemdef6 = statedef1.item_defs.create(:dseq => '6', :ddescription => 'プロジェクトのミッションやスコープなどをまとめてインセプションデッキに作成している')
itemdef7 = statedef1.item_defs.create(:dseq => '7', :ddescription => 'チーム全員でインセプションデッキを議論し、プロジェクトの方向性を合意している')

#itemdef8 = statedef1.item_defs.create(:dseq => '8', :ddescription => 'チーム全員でインセプションデッキを議論し、プロジェクトの方向性を合意している')

# 要求2/5 8
itemdef8 = statedef2.item_defs.create(:dseq => '1', :ddescription => 'ブレインストーミングなどによってミッションとニーズを実現するためのアイデアや機能を生み出している')
itemdef9 = statedef2.item_defs.create(:dseq => '2', :ddescription => 'アイデアや機能をユーザストーリとして記述し、プロダクトバックログを作成している')
itemdef10 = statedef2.item_defs.create(:dseq => '3', :ddescription => 'ユーザストーリがINVESTの条件を満たしているか検査し、内容と大きさが適切になるように修整している')
itemdef11 = statedef2.item_defs.create(:dseq => '4', :ddescription => 'プロダクトバックログには機能要件だけでなく、非機能要件(データ量、応答時間、信頼性、使い勝手など)が含まれている')
itemdef12 = statedef2.item_defs.create(:dseq => '5', :ddescription => 'オーナはプロダクトバックログの主要な項目に優先順位を付けている')
itemdef13 = statedef2.item_defs.create(:dseq => '6', :ddescription => 'チームはプロダクトバックログの主要な項目をストリートポイントで見積もりしている')
itemdef14 = statedef2.item_defs.create(:dseq => '7', :ddescription => 'オーナと開発チームはプロダクトバックログの主要な項目の優先順位と見積もりに合意している')
itemdef15 = statedef2.item_defs.create(:dseq => '8', :ddescription => 'プロダクトバックログがミッションを達成するものになっているかを検証し、インセプションデッキを修整している')

#itemdef16 = statedef2.item_defs.create(:dseq => '8', :ddescription => 'プロダクトバックログがミッションを達成するものになっているかを検証し、インセプションデッキを修整している')

# 要求3/5 16
itemdef16 = statedef3.item_defs.create(:dseq => '1', :ddescription => 'メンバ全員で議論し、スプリントゴールを決めている')
itemdef17 = statedef3.item_defs.create(:dseq => '2', :ddescription => 'プロダクトバックログからスプリントゴールを達成するための項目を選択し、スプリントバックログを作成している')
itemdef18 = statedef3.item_defs.create(:dseq => '3', :ddescription => 'スプリントバックログの項目を動作させるために必要なタスクへ展開している')
itemdef19 = statedef3.item_defs.create(:dseq => '4', :ddescription => 'タスクを理想時間によって見積もりしている')
itemdef20 = statedef3.item_defs.create(:dseq => '5', :ddescription => 'タスクが8理想時間以上の場合はタスクを再分割している')
itemdef21 = statedef3.item_defs.create(:dseq => '6', :ddescription => 'チームのベロシティを理想時間に換算し、換算率の妥当性を検証している')
itemdef22 = statedef3.item_defs.create(:dseq => '7', :ddescription => 'ベロシティと比較し、スプリントバックログをスプリント内に実装できるかを検証している')
itemdef23 = statedef3.item_defs.create(:dseq => '8', :ddescription => 'スプリントの途中で、スケジュールやリスクを考えてスプリントバックログの項目や優先順位を調整している')

#itemdef24 = statedef3.item_defs.create(:dseq => '8', :ddescription => 'スプリントの途中で、スケジュールやリスクを考えてスプリントバックログの項目や優先順位を調整している')

# 要求4/5 24
itemdef24 = statedef4.item_defs.create(:dseq => '1', :ddescription => 'チームは、メンバがタスクのDoneの定義条件に従ってスプリントバックログを更新していることを検査している')
itemdef25 = statedef4.item_defs.create(:dseq => '2', :ddescription => 'オーナはスプリントバックログのうちで、Doneした項目と未完了の項目を識別できている')
itemdef26 = statedef4.item_defs.create(:dseq => '3', :ddescription => 'スプリントゴールを達成したことを示すために、Doneしたユーザストーリのデモを実施している')
itemdef27 = statedef4.item_defs.create(:dseq => '4', :ddescription => 'デモの結果を議論し、システムがミッションを満たしているかを検証している')
itemdef28 = statedef4.item_defs.create(:dseq => '5', :ddescription => '次のスプリントゴールの達成を妨げるリスクを議論している')
itemdef29 = statedef4.item_defs.create(:dseq => '6', :ddescription => 'スプリントの実績に合わせて、ベロシティを修正している')
itemdef30 = statedef4.item_defs.create(:dseq => '7', :ddescription => 'デモ中に発生した重要な障害を記録し、その対策法を決定している')
itemdef31 = statedef4.item_defs.create(:dseq => '8', :ddescription => 'プロダクトバックログ中の非機能要件をシステムが満たしているかを確認している')

#itemdef32 = statedef4.item_defs.create(:dseq => '8', :ddescription => 'プロダクトバックログ中の非機能要件をシステムが満たしているかを確認している')

# 要求5/5 32
itemdef32 = statedef5.item_defs.create(:dseq => '1', :ddescription => 'インクリメントが非機能要件を満たしているかを検証している')
itemdef33 = statedef5.item_defs.create(:dseq => '2', :ddescription => 'チームはプロダクトのリリースに必要十分なプロダクトバックログの項目が実装されていることを検証している')
itemdef34 = statedef5.item_defs.create(:dseq => '3', :ddescription => 'チームは未実装のプロダクトバックログの項目がプロダクトのリリースの障害とならないことを検証している')
itemdef35 = statedef5.item_defs.create(:dseq => '4', :ddescription => 'プロダクトはミッションを満足している、ミッションの満足を妨げる問題が存在しない')
itemdef36 = statedef5.item_defs.create(:dseq => '5', :ddescription => 'オーナはプロダクトのリリースに必要十分な機能が実装されていることに同意している')
itemdef37 = statedef5.item_defs.create(:dseq => '6', :ddescription => 'オーナはプロダクトのリリースに必要十分な品質に達していることに同意している')

#-------------5状態のラーニングアルファ作成のため、6/7 7/7をコメントアウト---------------
# 要求6/7 36
#itemdef36 = statedef6.item_defs.create(:dseq => '1', :ddescription => 'チームはプロダクトのリリースに必要十分なプロダクトバックログの項目が実装されていることを検証している')
#itemdef37 = statedef6.item_defs.create(:dseq => '2', :ddescription => 'チームは未実装のプロダクトバックログの項目がプロダクトのリリースの障害とならないことを検証している')
#itemdef38 = statedef6.item_defs.create(:dseq => '3', :ddescription => 'オーナはプロダクトのリリースに必要十分な機能が実装されていることに同意している')
#itemdef39 = statedef6.item_defs.create(:dseq => '4', :ddescription => 'オーナはプロダクトのリリースに必要十分な品質に達していることに同意している')

# 要求7/7 40
#itemdef40 = statedef7.item_defs.create(:dseq => '1', :ddescription => 'プロダクトはミッションとニーズを満足している')
#itemdef41 = statedef7.item_defs.create(:dseq => '2', :ddescription => 'ミッションとニーズの満足を妨げる問題が存在しない')


# システム1/5 38
itemdef38 = statedef6.item_defs.create(:dseq => '1', :ddescription => 'システムを構成する主要コンポーネントの構造と関連(ソフトウェアアーキテクチャ)を設計する意義を理解している')
itemdef39 = statedef6.item_defs.create(:dseq => '2', :ddescription => '品質(効率性、使用性、信頼性など)、開発効率、学習容易さで、アーキテクチャに求める要件を順位付けしている')
itemdef40 = statedef6.item_defs.create(:dseq => '3', :ddescription => 'アーキテクチャを決定し、そのアーキテクチャが要件を満たしていることを確認している')
itemdef41 = statedef6.item_defs.create(:dseq => '4', :ddescription => 'ソフトウェアフレームワーク(Rails)や、重要なライブラリ(jQuery)、開発用のプログラミング言語を決定している')
itemdef42 = statedef6.item_defs.create(:dseq => '5', :ddescription => 'アーキテクチャ図を作成している')
itemdef43 = statedef6.item_defs.create(:dseq => '6', :ddescription => 'オーナと開発チームはアーキテクチャがシンプルで、要件を満たしていることに同意している')


#itemdef48 = statedef8.item_defs.create(:dseq => '7', :ddescription => 'オーナと開発チームはアーキテクチャがシンプルで、要件を満たしていることに同意している')

# システム2/5 44
itemdef44 = statedef7.item_defs.create(:dseq => '1', :ddescription => 'コーディング規約を作成し、チーム全員がそれに従うことに同意している')
itemdef45 = statedef7.item_defs.create(:dseq => '2', :ddescription => 'プロダクトの主要機能の処理フローをアクティビティ図で記述している')
itemdef46 = statedef7.item_defs.create(:dseq => '3', :ddescription => 'プロダクトの主要機能で使われるデータのスキーマ図を作成している')
itemdef47 = statedef7.item_defs.create(:dseq => '4', :ddescription => 'プロダクトの主要機能の画面のレイアウトを作成している')
itemdef48 = statedef7.item_defs.create(:dseq => '5', :ddescription => '運用環境(ハードウェア、ネットワーク環境、基本ソフトウェア、ミドルウェア、ライブラリなど)を、バージョンを含め決定している')
itemdef49 = statedef7.item_defs.create(:dseq => '6', :ddescription => '運用環境をインストールでき、運用環境においてサンプルアプリをビルドし、実行できることを確認している')
itemdef50 = statedef7.item_defs.create(:dseq => '7', :ddescription => 'オーナと開発チームは、概略設計案が要件を満たしていることを確認している')

# システム3/5 51
itemdef51 = statedef8.item_defs.create(:dseq => '1', :ddescription => 'メンバは単体テストを実施し、定義条件を満足したタスクをDoneとしている')
itemdef52 = statedef8.item_defs.create(:dseq => '2', :ddescription => '開発チームは結合テストを実施し、定義条件を満足したタスクをDoneとしている')
itemdef53 = statedef8.item_defs.create(:dseq => '3', :ddescription => 'オーナは、インクリメントを実行して機能を利用できる')

#itemdef57 = statedef10.item_defs.create(:dseq => '4', :ddescription => 'プロダクトの主要機能の画面のレイアウトを作成している')

# システム4/5 54
itemdef54 = statedef9.item_defs.create(:dseq => '1', :ddescription => '運用環境において、共有されたソースを用いてインクリメントがビルドできている')
itemdef55 = statedef9.item_defs.create(:dseq => '2', :ddescription => '運用環境において、機能テストが実施され、スプリントバックログのうちで、Doneした項目と未完了の項目を識別している')
itemdef56 = statedef9.item_defs.create(:dseq => '3', :ddescription => 'ユーザストーリの実際の場面における様々な条件を考えて機能テストを実施している')
itemdef57 = statedef9.item_defs.create(:dseq => '4', :ddescription => 'チーム以外の利用者は、運用環境においてインクリメントを実行して機能を利用できる')

#itemdef58 = statedef9.item_defs.create(:dseq => '5', :ddescription => 'ユーザストーリの実際の場面における様々な条件を考えて機能テストを実施している')

# システム5/5 58
itemdef58 = statedef10.item_defs.create(:dseq => '1', :ddescription => 'システムの主要な機能がテストされている')
itemdef59 = statedef10.item_defs.create(:dseq => '2', :ddescription => 'システムの処理能力や応答時間が要求通りであるかテストされている')
itemdef60 = statedef10.item_defs.create(:dseq => '3', :ddescription => 'ユーザインタフェースが使いやすいかテストされている')
itemdef61 = statedef10.item_defs.create(:dseq => '4', :ddescription => '高負荷状態（大量の入力データや同時多数ユーザなど）がテストされている')
itemdef62 = statedef10.item_defs.create(:dseq => '5', :ddescription => 'エラー処理や回復機能が正常に動作するかテストされている')
itemdef63 = statedef10.item_defs.create(:dseq => '6', :ddescription => 'ユーザドキュメントが利用できる')
itemdef64 = statedef10.item_defs.create(:dseq => '7', :ddescription => 'リリース用のパッケージが作成され、その機能や品質レベルが文書化されている')



#-------------5状態のラーニングアルファ作成のため、6/7 7/7をコメントアウト---------------
# システム6/7 70
#itemdef70 = statedef13.item_defs.create(:dseq => '1', :ddescription => '実際の運用環境でシステムがテストされている')
#itemdef71 = statedef13.item_defs.create(:dseq => '2', :ddescription => '実際と同じデータを使ってシステムがテストされている')
#itemdef72 = statedef13.item_defs.create(:dseq => '3', :ddescription => '実際のユーザによってシステムがテストされている')
#itemdef73 = statedef13.item_defs.create(:dseq => '4', :ddescription => 'ユーザドキュメントにはシステムの動作と異なる点はない')
#itemdef74 = statedef13.item_defs.create(:dseq => '5', :ddescription => '代表的な障害が識別され、それからの回復方法が文書化されている')

# システム7/7 74
#itemdef75 = statedef14.item_defs.create(:dseq => '1', :ddescription => '運用環境でシステムが使用されている')
#itemdef76 = statedef14.item_defs.create(:dseq => '2', :ddescription => 'オーナはシステム保守のサービスレベルに同意されてる')
#itemdef77 = statedef14.item_defs.create(:dseq => '3', :ddescription => '想定されたユーザに利用されている')
#itemdef78 = statedef14.item_defs.create(:dseq => '4', :ddescription => 'システムの全機能を運用した事例が少なくとも一つある')

# 仕事1/5 65
itemdef65 = statedef11.item_defs.create(:dseq => '1', :ddescription => '全員がプロジェクトのビジョンを共有するためのイベントを開催している')
itemdef66 = statedef11.item_defs.create(:dseq => '2', :ddescription => 'プロダクトバックログの優先順位の基準が定義されている')
itemdef67 = statedef11.item_defs.create(:dseq => '3', :ddescription => 'プロジェクトのリスク(技術、人的リソース、機関など)が識別されている')
itemdef68 = statedef11.item_defs.create(:dseq => '4', :ddescription => '開発環境と開発ツールを決定している')

# 仕事2/5 69
itemdef69 = statedef12.item_defs.create(:dseq => '1', :ddescription => '開発ツールを利用してアーキテクチャのサンプルアプリが作成でき、開発環境において実行できることを確認している')
itemdef70 = statedef12.item_defs.create(:dseq => '2', :ddescription => '開発環境と開発ツールをインストールする方法が明確になっている')
itemdef71 = statedef12.item_defs.create(:dseq => '3', :ddescription => 'チーム全員が、開発環境と開発ツールをインストールする方法を理解している')
itemdef72 = statedef12.item_defs.create(:dseq => '4', :ddescription => 'チーム全員が開発環境と開発ツールを利用できる状態にある')
itemdef73 = statedef12.item_defs.create(:dseq => '5', :ddescription => '使用するアプリケーションフレームワークやライブラリの学習リソース（ウェブサイトや書籍など）のリストを作成している')

# 仕事3/5 74
itemdef74 = statedef13.item_defs.create(:dseq => '1', :ddescription => 'メンバは自分の意志でタスクを選択し、作業を進めている')
itemdef75 = statedef13.item_defs.create(:dseq => '2', :ddescription => 'チームはタスクのDoneの条件を定義し、それを守ることに同意している')
itemdef76 = statedef13.item_defs.create(:dseq => '3', :ddescription => 'メンバはタスクのDoneの定義に従ってタスクの進捗状況を更新している')
itemdef77 = statedef13.item_defs.create(:dseq => '4', :ddescription => 'メンバはタスクの進捗を適切に更新しており、全員がそれを容易に閲覧できる')
itemdef78 = statedef13.item_defs.create(:dseq => '5', :ddescription => 'ソースが共有されており、定期的に最新版に更新されている')
itemdef79 = statedef13.item_defs.create(:dseq => '6', :ddescription => '共有されたソースを使ってシステムを一定期間ごとに運用環境でビルドしている')
itemdef80 = statedef13.item_defs.create(:dseq => '7', :ddescription => 'バグ情報が共有されており、バグの対策状況が追跡できている')

# 仕事4/5 81
itemdef81 = statedef14.item_defs.create(:dseq => '1', :ddescription => 'タスクの終了時に、完了日、作業時間などを記録している')
itemdef82 = statedef14.item_defs.create(:dseq => '2', :ddescription => 'チームのベロシティを計測している')
itemdef83 = statedef14.item_defs.create(:dseq => '3', :ddescription => 'タスクの進捗を可視化するためにスプリントの残作業時間をグラフ化している')
itemdef84 = statedef14.item_defs.create(:dseq => '4', :ddescription => 'タスクのDoneの定義が守られているかを検査している')
itemdef85 = statedef14.item_defs.create(:dseq => '5', :ddescription => '共有されたソースが定期的に更新されているかを検査している')
itemdef86 = statedef14.item_defs.create(:dseq => '6', :ddescription => '共有されたソースを使ってシステムを一定期間ごとにビルドできているかを検査している')
itemdef87 = statedef14.item_defs.create(:dseq => '7', :ddescription => 'バグの対策状況が正しく追跡されていることを検査している')

# 仕事5/5 88
itemdef88 = statedef15.item_defs.create(:dseq => '1', :ddescription => 'ソフトウェア製品の外部品質の６つの特性を理解している')
itemdef89 = statedef15.item_defs.create(:dseq => '2', :ddescription => 'ソフトウェアテストのプロセスと技法を理解している')
itemdef90 = statedef15.item_defs.create(:dseq => '3', :ddescription => 'ソースがレビューされ、担当者以外の人が理解できている')
itemdef91 = statedef15.item_defs.create(:dseq => '4', :ddescription => 'オーナはシステムの機能と品質がリリース可能なレベルであるかを合意している')
itemdef92 = statedef15.item_defs.create(:dseq => '5', :ddescription => 'チームはリリースのために不足している機能や品質を識別している')
itemdef93 = statedef15.item_defs.create(:dseq => '6', :ddescription => 'チームはリリースのために追加作業が必要かを検討している')
itemdef94 = statedef15.item_defs.create(:dseq => '7', :ddescription => 'チームはリリースに必要な追加作業を実施している')


#-------------5状態のラーニングアルファ作成のため、6/7 7/7をコメントアウト---------------
# 仕事6/7 102
#itemdef106 = statedef20.item_defs.create(:dseq => '1', :ddescription => 'オーナはシステムの機能と品質がリリース可能なレベルであるかを合意している')
#itemdef107 = statedef20.item_defs.create(:dseq => '2', :ddescription => 'チームはリリースのために不足している機能や品質を識別している')
#itemdef108 = statedef20.item_defs.create(:dseq => '3', :ddescription => 'チームはリリースのために追加作業が必要かを検討している')
#itemdef109 = statedef20.item_defs.create(:dseq => '4', :ddescription => 'チームはリリースに必要な追加作業を実施している')

# 仕事7/7 106
#itemdef110 = statedef21.item_defs.create(:dseq => '1', :ddescription => 'システムの提供まで完了している')
#itemdef111 = statedef21.item_defs.create(:dseq => '2', :ddescription => '仕事の成果が完成している')
#itemdef112 = statedef21.item_defs.create(:dseq => '3', :ddescription => 'システム障害の対応法が定義されている')
#itemdef113 = statedef21.item_defs.create(:dseq => '4', :ddescription => '機能の追加や変更の要望受付などのシステム更新の手続きを定義している')
#itemdef114 = statedef21.item_defs.create(:dseq => '5', :ddescription => '開発したシステムがユーザに受理されている')


# チーム1/5 95
itemdef95  = statedef16.item_defs.create(:dseq => '1', :ddescription => 'メンバが決まっている')
itemdef96  = statedef16.item_defs.create(:dseq => '2', :ddescription => 'スクラムマスタが決まっている')
itemdef97  = statedef16.item_defs.create(:dseq => '3', :ddescription => 'プロジェクトオーナが決まっている')
itemdef98  = statedef16.item_defs.create(:dseq => '4', :ddescription => 'メンバの個性を理解し、互いに尊重している')
itemdef99  = statedef16.item_defs.create(:dseq => '5', :ddescription => 'メンバの役割（記録係、チェック係、励まし係など）を決めている')
itemdef100 = statedef16.item_defs.create(:dseq => '6', :ddescription => 'マスタはメンバのコミュニケーションを活発にするための支援をしている')

# チーム2/5 101
itemdef101 = statedef17.item_defs.create(:dseq => '1', :ddescription => 'メンバ全員が開発を開始している')
itemdef102 = statedef17.item_defs.create(:dseq => '2', :ddescription => 'メンバ全員が定期的に集まる場所と時間を決めている')
itemdef103 = statedef17.item_defs.create(:dseq => '3', :ddescription => '全員がミッションとスケジュールを理解している')
itemdef104 = statedef17.item_defs.create(:dseq => '4', :ddescription => 'チームのコミュニケーションのためのルールを決めている')
itemdef105 = statedef17.item_defs.create(:dseq => '5', :ddescription => '全員がコミュニケーションのルールを守っている')
itemdef106 = statedef17.item_defs.create(:dseq => '6', :ddescription => 'マスタは全員参加する上での障害を理解し、障害を取り除くための支援している')

# チーム3/5 107
itemdef107 = statedef18.item_defs.create(:dseq => '1', :ddescription => '情報を共有する上で重視する項目（データの上限、更新間隔、簡便性など）を決定している')
itemdef108 = statedef18.item_defs.create(:dseq => '2', :ddescription => 'チームが情報を共有するための方法（プラクティスやツール）を定義している')
itemdef109 = statedef18.item_defs.create(:dseq => '3', :ddescription => 'チームはメンバの進捗情報を共有している')
itemdef110 = statedef18.item_defs.create(:dseq => '4', :ddescription => 'チームはメンバの障害情報を共有している')
itemdef111 = statedef18.item_defs.create(:dseq => '5', :ddescription => 'チームはメンバの次の計画を共有している')
itemdef112 = statedef18.item_defs.create(:dseq => '6', :ddescription => '決定した共有法が実施され、メンバ全員が互いの状況を理解しているという実感が持てている')
itemdef113 = statedef18.item_defs.create(:dseq => '7', :ddescription => 'マスタは情報共有を促進するための支援をしている')

# チーム4/5 114
itemdef114 = statedef19.item_defs.create(:dseq => '1', :ddescription => 'スプリントでリリースするインクリメントのスコープと優先順位をメンバ全員が理解している')
itemdef115 = statedef19.item_defs.create(:dseq => '2', :ddescription => '動くインクリメントをリリースするためにチームの共有情報が活用されている')
itemdef116 = statedef19.item_defs.create(:dseq => '3', :ddescription => '協力して実行するタスクを増やすための方法（プラクティス・ツール）を採用している')
itemdef117 = statedef19.item_defs.create(:dseq => '4', :ddescription => 'メンバが協力して行うタスクが増えている')
itemdef118 = statedef19.item_defs.create(:dseq => '5', :ddescription => 'メンバ全員がゴールに向かって協力している実感が持てている')
itemdef119 = statedef19.item_defs.create(:dseq => '6', :ddescription => 'スプリントゴールを満たす動くインクリメントをスプリントでリリースしている')
itemdef120 = statedef19.item_defs.create(:dseq => '7', :ddescription => 'マスタは効率的で楽しい開発となるようにチームを支援している')

# チーム5/5 121
itemdef121 = statedef20.item_defs.create(:dseq => '1', :ddescription => 'チームの開発状況をメンバ全員で振り返り、KPTにまとめている')
itemdef122 = statedef20.item_defs.create(:dseq => '2', :ddescription => 'KPTのPからＴが提案され、次のスプリントでTがKに改善されている')
itemdef123 = statedef20.item_defs.create(:dseq => '3', :ddescription => 'チームがより効果的・効率的に働くための方法（プラクティス・ツール）を採用している')
itemdef124 = statedef20.item_defs.create(:dseq => '4', :ddescription => 'バグの発生や仕様の変更などの障害にメンバ全員で対応できている')
itemdef125 = statedef20.item_defs.create(:dseq => '5', :ddescription => 'チームの作業負荷が片寄らないように調整ができている')
itemdef126 = statedef20.item_defs.create(:dseq => '6', :ddescription => 'チームは開発効率を高めるための方法（プラクティス・ツール）を自らで決定し採用している')
itemdef127 = statedef20.item_defs.create(:dseq => '7', :ddescription => 'マスタは振り返りのプロセスを改善し、高いモチベーションを維持する支援をしている')


#-------------5状態のラーニングアルファ作成のため、6/7 7/7をコメントアウト---------------
# チーム6/7 143
#itemdef147 = statedef27.item_defs.create(:dseq => '1', :ddescription => 'チームはプロダクトの価値を高めるための方法（プラクティス・ツール）を自らで決定し採用している')
#itemdef148 = statedef27.item_defs.create(:dseq => '2', :ddescription => 'チームは開発効率を高めるための方法（プラクティス・ツール）を自らで決定し採用している')
#itemdef149 = statedef27.item_defs.create(:dseq => '3', :ddescription => 'チームの能力を高めるために必要な学習の場や手段を自ら生み出している')
#itemdef150 = statedef27.item_defs.create(:dseq => '4', :ddescription => '高いモチベーションをチームが維持できていると実感が持てている')
#itemdef151 = statedef27.item_defs.create(:dseq => '5', :ddescription => '高い品質のインクリメントをリリースしている')
#itemdef152 = statedef27.item_defs.create(:dseq => '6', :ddescription => '機能横断的なチームになっている')
#itemdef153 = statedef27.item_defs.create(:dseq => '7', :ddescription => 'マスタはチームが自己組織化されたチームに成長するために支援している')

# チーム7/7 150
#itemdef154 = statedef28.item_defs.create(:dseq => '1', :ddescription => 'チームに責任が生じていない')
#itemdef155 = statedef28.item_defs.create(:dseq => '2', :ddescription => '役割が移管されている')

#Project
project1 = framework1.projects.create(:name => 'PBSB', :start => '2016-1-1', :end => '2016-1-31', :length => '30', :description => 'バックログアプリ製作')
project2 = framework1.projects.create(:name => 'クエスト&ポイント', :start => '2016-1-1', :end => '2016-1-31', :length => '30', :description => 'クエストアプリ製作')

#Sprint
sprint1 = project1.sprints.create(:no => '1', :start => '2016-1-1', :end =>'2016-1-10', :goal =>'---')

#Alpha 要求 システム 仕事 チーム
alpha1 = project1.alphas.create(:alpha_def_id => '1', :rateOfDocument =>'0.00', :rateOfAgreed =>'0.00')
alpha2 = project1.alphas.create(:alpha_def_id => '2', :rateOfDocument =>'0.00', :rateOfAgreed =>'0.00')
alpha3 = project1.alphas.create(:alpha_def_id => '3', :rateOfDocument =>'0.00', :rateOfAgreed =>'0.00')
alpha4 = project1.alphas.create(:alpha_def_id => '4', :rateOfDocument =>'0.00', :rateOfAgreed =>'0.00')

#State 要求
state1 = alpha1.states.create(:state_def_id => '1', :documentedCount => '0', :agreedCount =>'0')
state2 = alpha1.states.create(:state_def_id => '2', :documentedCount => '0', :agreedCount =>'0')
state3 = alpha1.states.create(:state_def_id => '3', :documentedCount => '0', :agreedCount =>'0')
state4 = alpha1.states.create(:state_def_id => '4', :documentedCount => '0', :agreedCount =>'0')
state5 = alpha1.states.create(:state_def_id => '5', :documentedCount => '0', :agreedCount =>'0')

#state6 = alpha1.states.create()
#state7 = alpha1.states.create()

#State システム
state6 = alpha2.states.create(:state_def_id => '6', :documentedCount => '0', :agreedCount =>'0')
state7 = alpha2.states.create(:state_def_id => '7', :documentedCount => '0', :agreedCount =>'0')
state8 = alpha2.states.create(:state_def_id => '8', :documentedCount => '0', :agreedCount =>'0')
state9 = alpha2.states.create(:state_def_id => '9', :documentedCount => '0', :agreedCount =>'0')
state10 = alpha2.states.create(:state_def_id => '10', :documentedCount => '0', :agreedCount =>'0')

#state11 = alpha2.states.create()
#state12 = alpha2.states.create()
#state13 = alpha2.states.create()
#state14 = alpha2.states.create()

#State 仕事
state11 = alpha3.states.create(:state_def_id => '11', :documentedCount => '0', :agreedCount =>'0')
state12 = alpha3.states.create(:state_def_id => '12', :documentedCount => '0', :agreedCount =>'0')
state13 = alpha3.states.create(:state_def_id => '13', :documentedCount => '0', :agreedCount =>'0')
state14 = alpha3.states.create(:state_def_id => '14', :documentedCount => '0', :agreedCount =>'0')
state15 = alpha3.states.create(:state_def_id => '15', :documentedCount => '0', :agreedCount =>'0')

#state16 = alpha3.states.create()
#state17 = alpha3.states.create()
#state18 = alpha3.states.create()
#state19 = alpha3.states.create()
#state20 = alpha3.states.create()
#state21 = alpha3.states.create()

#State チーム
state16 = alpha4.states.create(:state_def_id => '16', :documentedCount => '0', :agreedCount =>'0')
state17 = alpha4.states.create(:state_def_id => '17', :documentedCount => '0', :agreedCount =>'0')
state18 = alpha4.states.create(:state_def_id => '18', :documentedCount => '0', :agreedCount =>'0')
state19 = alpha4.states.create(:state_def_id => '19', :documentedCount => '0', :agreedCount =>'0')
state20 = alpha4.states.create(:state_def_id => '20', :documentedCount => '0', :agreedCount =>'0')

#state22 = alpha4.states.create()
#state23 = alpha4.states.create()
#state24 = alpha4.states.create()
#state25 = alpha4.states.create()
#state26 = alpha4.states.create()
#state27 = alpha4.states.create()
#state28 = alpha4.states.create()

#Item 要求1/5根拠
item1 = state1.items.create(:item_def_id => "1")
item2 = state1.items.create(:item_def_id => "2")
item3 = state1.items.create(:item_def_id => "3")
item4 = state1.items.create(:item_def_id => "4")
item5 = state1.items.create(:item_def_id => "5")
item6 = state1.items.create(:item_def_id => "6")
item7 = state1.items.create(:item_def_id => "7")

#Item 要求2/5根拠
item8 = state2.items.create(:item_def_id => "8")
item9 = state2.items.create(:item_def_id => "9")
item10 = state2.items.create(:item_def_id => "10")
item11 = state2.items.create(:item_def_id => "11")
item12 = state2.items.create(:item_def_id => "12")
item13 = state2.items.create(:item_def_id => "13")
item14 = state2.items.create(:item_def_id => "14")
item15 = state2.items.create(:item_def_id => "15")

#Item 要求3/5根拠
item16 = state3.items.create(:item_def_id => "16")
item17 = state3.items.create(:item_def_id => "17")
item18 = state3.items.create(:item_def_id => "18")
item19 = state3.items.create(:item_def_id => "19")
item20 = state3.items.create(:item_def_id => "20")
item21 = state3.items.create(:item_def_id => "21")
item22 = state3.items.create(:item_def_id => "22")
item23 = state3.items.create(:item_def_id => "23")

#Item 要求4/5根拠
item24 = state4.items.create(:item_def_id => "24")
item25 = state4.items.create(:item_def_id => "25")
item26 = state4.items.create(:item_def_id => "26")
item27 = state4.items.create(:item_def_id => "27")
item28 = state4.items.create(:item_def_id => "28")
item29 = state4.items.create(:item_def_id => "29")
item30 = state4.items.create(:item_def_id => "30")
item31 = state4.items.create(:item_def_id => "31")

#Item 要求5/5根拠
item32 = state5.items.create(:item_def_id => "32")
item33 = state5.items.create(:item_def_id => "33")
item34 = state5.items.create(:item_def_id => "34")
item35 = state5.items.create(:item_def_id => "35")
item36 = state5.items.create(:item_def_id => "36")
item37 = state5.items.create(:item_def_id => "37")

#Item システム1/5根拠
item38 = state6.items.create(:item_def_id => "38")
item39 = state6.items.create(:item_def_id => "39")
item40 = state6.items.create(:item_def_id => "40")
item41 = state6.items.create(:item_def_id => "41")
item42 = state6.items.create(:item_def_id => "42")
item43 = state6.items.create(:item_def_id => "43")

#Item システム2/5根拠
item44 = state7.items.create(:item_def_id => "44")
item45 = state7.items.create(:item_def_id => "45")
item46 = state7.items.create(:item_def_id => "46")
item47 = state7.items.create(:item_def_id => "47")
item48 = state7.items.create(:item_def_id => "48")
item49 = state7.items.create(:item_def_id => "49")
item50 = state7.items.create(:item_def_id => "50")

#Item システム3/5根拠
item51 = state8.items.create(:item_def_id => "51")
item52 = state8.items.create(:item_def_id => "52")
item53 = state8.items.create(:item_def_id => "53")

#Item システム4/5根拠
item54 = state9.items.create(:item_def_id => "54")
item55 = state9.items.create(:item_def_id => "55")
item56 = state9.items.create(:item_def_id => "56")
item57 = state9.items.create(:item_def_id => "57")

#Item システム5/5根拠
item58 = state10.items.create(:item_def_id => "58")
item59 = state10.items.create(:item_def_id => "59")
item60 = state10.items.create(:item_def_id => "60")
item61 = state10.items.create(:item_def_id => "61")
item62 = state10.items.create(:item_def_id => "62")
item63 = state10.items.create(:item_def_id => "63")
item64 = state10.items.create(:item_def_id => "64")

#Item 仕事1/5根拠
item65 = state11.items.create(:item_def_id => "65")
item66 = state11.items.create(:item_def_id => "66")
item67 = state11.items.create(:item_def_id => "67")
item68 = state11.items.create(:item_def_id => "68")

#Item 仕事2/5根拠
item69 = state12.items.create(:item_def_id => "69")
item70 = state12.items.create(:item_def_id => "70")
item71 = state12.items.create(:item_def_id => "71")
item72 = state12.items.create(:item_def_id => "72")
item73 = state12.items.create(:item_def_id => "73")

#Item 仕事3/5根拠
item74 = state13.items.create(:item_def_id => "74")
item75 = state13.items.create(:item_def_id => "75")
item76 = state13.items.create(:item_def_id => "76")
item77 = state13.items.create(:item_def_id => "77")
item78 = state13.items.create(:item_def_id => "78")
item79 = state13.items.create(:item_def_id => "79")
item80 = state13.items.create(:item_def_id => "80")

#Item 仕事4/5根拠
item81 = state14.items.create(:item_def_id => "81")
item82 = state14.items.create(:item_def_id => "82")
item83 = state14.items.create(:item_def_id => "83")
item84 = state14.items.create(:item_def_id => "84")
item85 = state14.items.create(:item_def_id => "85")
item86 = state14.items.create(:item_def_id => "86")
item87 = state14.items.create(:item_def_id => "87")


#Item 仕事5/5根拠
item88 = state15.items.create(:item_def_id => "88")
item89 = state15.items.create(:item_def_id => "89")
item90 = state15.items.create(:item_def_id => "90")
item91 = state15.items.create(:item_def_id => "91")
item92 = state15.items.create(:item_def_id => "92")
item93 = state15.items.create(:item_def_id => "93")
item94 = state15.items.create(:item_def_id => "94")

#Item チーム1/5根拠
item95 = state16.items.create(:item_def_id => "95")
item96 = state16.items.create(:item_def_id => "96")
item97 = state16.items.create(:item_def_id => "97")
item98 = state16.items.create(:item_def_id => "98")
item99 = state16.items.create(:item_def_id => "99")
item100 = state16.items.create(:item_def_id => "100")


#Item チーム2/5根拠
item101 = state17.items.create(:item_def_id => "101")
item102 = state17.items.create(:item_def_id => "102")
item103 = state17.items.create(:item_def_id => "103")
item104 = state17.items.create(:item_def_id => "104")
item105 = state17.items.create(:item_def_id => "105")
item106 = state17.items.create(:item_def_id => "106")

#Item チーム3/5根拠
item107 = state18.items.create(:item_def_id => "107")
item108 = state18.items.create(:item_def_id => "108")
item109 = state18.items.create(:item_def_id => "109")
item110 = state18.items.create(:item_def_id => "110")
item111 = state18.items.create(:item_def_id => "111")
item112 = state18.items.create(:item_def_id => "112")
item113 = state18.items.create(:item_def_id => "113")

#Item チーム4/5根拠
item114 = state19.items.create(:item_def_id => "114")
item115 = state19.items.create(:item_def_id => "115")
item116 = state19.items.create(:item_def_id => "116")
item117 = state19.items.create(:item_def_id => "117")
item118 = state19.items.create(:item_def_id => "118")
item119 = state19.items.create(:item_def_id => "119")
item120 = state19.items.create(:item_def_id => "120")

#Item チーム5/5根拠
item121 = state20.items.create(:item_def_id => "121")
item122 = state20.items.create(:item_def_id => "122")
item123 = state20.items.create(:item_def_id => "123")
item124 = state20.items.create(:item_def_id => "124")
item125 = state20.items.create(:item_def_id => "125")
item126 = state20.items.create(:item_def_id => "126")
item127 = state20.items.create(:item_def_id => "127")

#evidence作ってみる
#evidence1 = evidence.new(:item_id => "1", :document => 'プロダクトの名前は「sample」')
#evidence1.save!
#itemdef1 = statedef1.item_defs.create(:dseq => '1', :ddescription => 'プロダクトに名前を付けている')

#evidence1 = Evidence.create(:item_id => '1', :document => 'プロダクトの名前は「sample」', :lastModified =>'')
#evidence2 = Evidence.create(:item_id => '2', :document => '目的は○○で、価値は△△で合意している', :lastModified =>'')
#evidence3 = Evidence.create(:item_id => '3', :document => 'ニーズは○○で、問題は△△となっている', :lastModified =>'')
#evidence4 = Evidence.create(:item_id => '4', :document => '現システムの長所は○○で、欠点は△△である', :lastModified =>'')
#evidence5 = Evidence.create(:item_id => '5', :document => '特徴は○○で、機能は△△である', :lastModified =>'')
#evidence6 = Evidence.create(:item_id => '6', :document => '開発日は〇日で、終了日は△日、マイルストーンは□で合意している', :lastModified =>'')
#evidence7 = Evidence.create(:item_id => '7', :document => '～～～でインせぷしょんデッキを作成している', :lastModified =>'')
#evidence8 = Evidence.create(:item_id => '8', :document => 'プロジェクトの方向性は~~となっている', :lastModified =>'')

127.times do |no|
	Evidence.create(:item_id => "#{1 + no}" , :document => "")
end

#project2のラーニングアルファ作成
#alphaの作成

4.times do |no|
	project2.alphas.create(:alpha_def_id => "#{1+no}", :rateOfDocument =>'0.00', :rateOfAgreed =>'0.00')
end

#stateの作成
5.times do |no|
	State.create(:alpha_id => '5',:state_def_id => "#{1+no}", :documentedCount => '0', :agreedCount =>'0')
end

5.times do |no|
	State.create(:alpha_id => '6',:state_def_id => "#{6+no}", :documentedCount => '0', :agreedCount =>'0')
end

5.times do |no|
	State.create(:alpha_id => '7',:state_def_id => "#{11+no}", :documentedCount => '0', :agreedCount =>'0')
end

5.times do |no|
	State.create(:alpha_id => '8',:state_def_id => "#{16+no}", :documentedCount => '0', :agreedCount =>'0')
end

#itemの作成
7.times do |no|
	Item.create(:state_id => '21', :item_def_id => "#{1+no}")
end

8.times do |no|
	Item.create(:state_id => '22', :item_def_id => "#{8+no}")
end

8.times do |no|
	Item.create(:state_id => '23', :item_def_id => "#{16+no}")
end

8.times do |no|
	Item.create(:state_id => '24', :item_def_id => "#{24+no}")
end

6.times do |no|
	Item.create(:state_id => '25', :item_def_id => "#{32+no}")
end

6.times do |no|
	Item.create(:state_id => '26', :item_def_id => "#{38+no}")
end

7.times do |no|
	Item.create(:state_id => '27', :item_def_id => "#{44+no}")
end

3.times do |no|
	Item.create(:state_id => '28', :item_def_id => "#{51+no}")
end

4.times do |no|
	Item.create(:state_id => '29', :item_def_id => "#{54+no}")
end

7.times do |no|
	Item.create(:state_id => '30', :item_def_id => "#{58+no}")
end

4.times do |no|
	Item.create(:state_id => '31', :item_def_id => "#{65+no}")
end

5.times do |no|
	Item.create(:state_id => '32', :item_def_id => "#{69+no}")
end

7.times do |no|
	Item.create(:state_id => '33', :item_def_id => "#{74+no}")
end

7.times do |no|
	Item.create(:state_id => '34', :item_def_id => "#{81+no}")
end

7.times do |no|
	Item.create(:state_id => '35', :item_def_id => "#{88+no}")
end

6.times do |no|
	Item.create(:state_id => '36', :item_def_id => "#{95+no}")
end

6.times do |no|
	Item.create(:state_id => '37', :item_def_id => "#{101+no}")
end

7.times do |no|
	Item.create(:state_id => '38', :item_def_id => "#{107+no}")
end

7.times do |no|
	Item.create(:state_id => '39', :item_def_id => "#{114+no}")
end

7.times do |no|
	Item.create(:state_id => '40', :item_def_id => "#{121+no}")
end

#Evidenceの作成
127.times do |no|
	Evidence.create(:item_id => "#{128 + no}" , :document => "")
end

#memberをつくる
member1 = Member.create(:name => 'test1', :yomi => 'test1', :username => 'test1', :email => 'test1@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント1')
member2 = Member.create(:name => 'test2', :yomi => 'test2', :username => 'test2', :email => 'test2@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント2')
member3 = Member.create(:name => 'test3', :yomi => 'test3', :username => 'test3', :email => 'test3@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント3')
member4 = Member.create(:name => 'test4', :yomi => 'test4', :username => 'test4', :email => 'test4@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント4')
member5 = Member.create(:name => 'test5', :yomi => 'test5', :username => 'test5', :email => 'test5@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント5')
member6 = Member.create(:name => 'test6', :yomi => 'test6', :username => 'test6', :email => 'test6@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント6')
member7 = Member.create(:name => 'test7', :yomi => 'test7', :username => 'test7', :email => 'test7@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント7')
member8 = Member.create(:name => 'test8', :yomi => 'test8', :username => 'test8', :email => 'test8@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント8')
member9 = Member.create(:name => 'test9', :yomi => 'test9', :username => 'test9', :email => 'test9@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント9')
member10 = Member.create(:name => 'test10', :yomi => 'test10', :username => 'test10', :email => 'test10@oit.ac.jp', :password => 'password', admin: true, :description =>'テストアカウント10')

member = Member.create(:name => 'test11', :yomi => 'test11', :username => 'test11', :email => 'test11@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント11')
member = Member.create(:name => 'test12', :yomi => 'test12', :username => 'test12', :email => 'test12@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント12')
member = Member.create(:name => 'test13', :yomi => 'test13', :username => 'test13', :email => 'test13@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント13')
member = Member.create(:name => 'test14', :yomi => 'test14', :username => 'test14', :email => 'test14@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント14')
member = Member.create(:name => 'test15', :yomi => 'test15', :username => 'test15', :email => 'test15@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント15')
member = Member.create(:name => 'test16', :yomi => 'test16', :username => 'test16', :email => 'test16@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント16')
member = Member.create(:name => 'test17', :yomi => 'test17', :username => 'test17', :email => 'test17@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント17')
member = Member.create(:name => 'test18', :yomi => 'test18', :username => 'test18', :email => 'test18@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント18')
member = Member.create(:name => 'test19', :yomi => 'test19', :username => 'test19', :email => 'test19@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント19')
member = Member.create(:name => 'test20', :yomi => 'test20', :username => 'test20', :email => 'test20@oit.ac.jp', :password => 'password', admin: false, :description =>'テストアカウント20')




#scrumememberを作る
scrummember1 = project1.scrum_members.create(:member_id => '3', :role => '1', :description =>'テストスクラムメンバーアカウント1')
scrummember2 = project1.scrum_members.create(:member_id => '4', :role => '2', :description =>'テストスクラムメンバーアカウント2')
scrummember3 = project1.scrum_members.create(:member_id => '7', :role => '2', :description =>'テストスクラムメンバーアカウント3')
scrummember3 = project1.scrum_members.create(:member_id => '8', :role => '2', :description =>'テストスクラムメンバーアカウント4')

scrummember4 = project2.scrum_members.create(:member_id => '5', :role => '2', :description =>'テストスクラムメンバーアカウント5')
scrummember5 = project2.scrum_members.create(:member_id => '6', :role => '2', :description =>'テストスクラムメンバーアカウント6')
scrummember6 = project2.scrum_members.create(:member_id => '9', :role => '1', :description =>'テストスクラムメンバーアカウント7')
