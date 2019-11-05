# -*- coding: utf-8 -*-

# 要求1/5 1
AlphaItemDef.seed_once(:id,
  { id: 1, dseq:'1', ddescription: 'プロダクトに名前を付けている', alpha_state_def_id: 1 }, 
  { id: 2, dseq:'2', ddescription: 'プロジェクトのミッション(目的)を明確にしている', alpha_state_def_id: 1 },
  { id: 3, dseq:'3', ddescription: '現状を分析し、プロダクトのユーザグループとグループ固有のニーズ・問題点を収集している', alpha_state_def_id: 1 },
  { id: 4, dseq:'4', ddescription: 'プロダクトの特徴と主要な機能(スコープ)を明確にしている', alpha_state_def_id: 1 },
  { id: 5, dseq:'5', ddescription: '開発日、終了日、マイルストーンなどの日程をオーナーと合意している', alpha_state_def_id: 1 },
  { id: 6, dseq:'6', ddescription: 'プロジェクトのミッションやスコープなどをまとめてインセプションデッキに作成している', alpha_state_def_id: 1 },
  { id: 7, dseq:'7', ddescription: 'チーム全員でインセプションデッキを議論し、プロジェクトの方向性を合意している', alpha_state_def_id: 1 }
)

# 要求2/5 8
AlphaItemDef.seed_once(:id,
  { id: 8, dseq:'1', ddescription: 'ブレインストーミングなどによってミッションとニーズを実現するためのアイデアや機能を生み出している', alpha_state_def_id: 2 },
  { id: 9, dseq:'2', ddescription: 'アイデアや機能をユーザストーリとして記述し、プロダクトバックログを作成している', alpha_state_def_id: 2 },
  { id: 10, dseq:'3', ddescription: 'ユーザストーリがINVESTの条件を満たしているか検査し、内容と大きさが適切になるように修整している', alpha_state_def_id: 2 },
  { id: 11, dseq:'4', ddescription: 'プロダクトバックログには機能要件だけでなく、非機能要件(データ量、応答時間、信頼性、使い勝手など)が含まれている', alpha_state_def_id: 2 },
  { id: 12, dseq:'5', ddescription: 'オーナはプロダクトバックログの主要な項目に優先順位を付けている', alpha_state_def_id: 2 },
  { id: 13, dseq:'6', ddescription: 'チームはプロダクトバックログの主要な項目をストリートポイントで見積もりしている', alpha_state_def_id: 2 },
  { id: 14, dseq:'7', ddescription: 'オーナと開発チームはプロダクトバックログの主要な項目の優先順位と見積もりに合意している', alpha_state_def_id: 2 },
  { id: 15, dseq:'8', ddescription: 'プロダクトバックログがミッションを達成するものになっているかを検証し、インセプションデッキを修整している', alpha_state_def_id: 2 }
  )

# 要求3/5 16
AlphaItemDef.seed_once(:id,
  { id: 16, dseq:'1', ddescription: 'メンバ全員で議論し、スプリントゴールを決めている', alpha_state_def_id: 3 },
  { id: 17, dseq:'2', ddescription: 'プロダクトバックログからスプリントゴールを達成するための項目を選択し、スプリントバックログを作成している', alpha_state_def_id: 3 },
  { id: 18, dseq:'3', ddescription: 'スプリントバックログの項目を動作させるために必要なタスクへ展開している', alpha_state_def_id: 3 },
  { id: 19, dseq:'4', ddescription: 'タスクを理想時間によって見積もりしている', alpha_state_def_id: 3 },
  { id: 20, dseq:'5', ddescription: 'タスクが8理想時間以上の場合はタスクを再分割している', alpha_state_def_id: 3 },
  { id: 21, dseq:'6', ddescription: 'チームのベロシティを理想時間に換算し、換算率の妥当性を検証している', alpha_state_def_id: 3 },
  { id: 22, dseq:'7', ddescription: 'ベロシティと比較し、スプリントバックログをスプリント内に実装できるかを検証している', alpha_state_def_id: 3 },
  { id: 23, dseq:'8', ddescription: 'スプリントの途中で、スケジュールやリスクを考えてスプリントバックログの項目や優先順位を調整している', alpha_state_def_id: 3 }
  )

# 要求4/5 24
AlphaItemDef.seed_once(:id,
  { id: 24, dseq:'1', ddescription: 'チームは、メンバがタスクのDoneの定義条件に従ってスプリントバックログを更新していることを検査している', alpha_state_def_id: 4 },
  { id: 25, dseq:'2', ddescription: 'オーナはスプリントバックログのうちで、Doneした項目と未完了の項目を識別できている', alpha_state_def_id: 4 },
  { id: 26, dseq:'3', ddescription: 'スプリントゴールを達成したことを示すために、Doneしたユーザストーリのデモを実施している', alpha_state_def_id: 4 },
  { id: 27, dseq:'4', ddescription: 'デモの結果を議論し、システムがミッションを満たしているかを検証している', alpha_state_def_id: 4 },
  { id: 28, dseq:'5', ddescription: '次のスプリントゴールの達成を妨げるリスクを議論している', alpha_state_def_id: 4 },
  { id: 29, dseq:'6', ddescription: 'スプリントの実績に合わせて、ベロシティを修正している', alpha_state_def_id: 4 },
  { id: 30, dseq:'7', ddescription: 'デモ中に発生した重要な障害を記録し、その対策法を決定している', alpha_state_def_id: 4 },
  { id: 31, dseq:'8', ddescription: 'プロダクトバックログ中の非機能要件をシステムが満たしているかを確認している', alpha_state_def_id: 4 }
  )

# 要求5/5 32
AlphaItemDef.seed_once(:id,
  { id: 32, dseq:'1', ddescription: 'インクリメントが非機能要件を満たしているかを検証している', alpha_state_def_id:5 },
  { id: 33, dseq:'2', ddescription: 'チームはプロダクトのリリースに必要十分なプロダクトバックログの項目が実装されていることを検証している', alpha_state_def_id:5 },
  { id: 34, dseq:'3', ddescription: 'チームは未実装のプロダクトバックログの項目がプロダクトのリリースの障害とならないことを検証している', alpha_state_def_id:5 },
  { id: 35, dseq:'4', ddescription: 'プロダクトはミッションを満足している、ミッションの満足を妨げる問題が存在しない', alpha_state_def_id:5 },
  { id: 36, dseq:'5', ddescription: 'オーナはプロダクトのリリースに必要十分な機能が実装されていることに同意している', alpha_state_def_id:5 },
  { id: 37, dseq:'6', ddescription: 'オーナはプロダクトのリリースに必要十分な品質に達していることに同意している', alpha_state_def_id:5 }
  )
