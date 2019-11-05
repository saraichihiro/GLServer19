# -*- coding: utf-8 -*-

# 要求アルファの状態の定義
AlphaStateDef.seed_once(:id,
  { id: 1, dseq: '1', dname: '構想', alpha_alpha_def_id: 1 },
  { id: 2, dseq: '2', dname: 'スコープ定義', alpha_alpha_def_id: 1 },
  { id: 3, dseq: '3', dname: '具体化', alpha_alpha_def_id: 1 },
  { id: 4, dseq: '4', dname: '検証', alpha_alpha_def_id: 1 },
  { id: 5, dseq: '5', dname: '充足', alpha_alpha_def_id: 1 }
)

# システムアルファの状態の定義
AlphaStateDef.seed_once(:id,
  { id: 6, dseq: '1', dname: '方針決定', alpha_alpha_def_id: 2 },
  { id: 7, dseq: '2', dname: '基本設計', alpha_alpha_def_id: 2 },
  { id: 8, dseq: '3', dname: 'デモ可能', alpha_alpha_def_id: 2 },
  { id: 9, dseq: '4', dname: '利用可能', alpha_alpha_def_id: 2 },
  { id: 10, dseq: '5', dname: 'リリース', alpha_alpha_def_id: 2 }
)

# 仕事アルファの状態の定義
AlphaStateDef.seed_once(:id,
  { id: 11, dseq: '1', dname: '方向付け', alpha_alpha_def_id: 3 },
  { id: 12, dseq: '2', dname: '環境準備', alpha_alpha_def_id: 3 },
  { id: 13, dseq: '3', dname: '共有', alpha_alpha_def_id: 3 },
  { id: 14, dseq: '4', dname: '検査', alpha_alpha_def_id: 3 },
  { id: 15, dseq: '5', dname: '適応', alpha_alpha_def_id: 3 }
)

# チームアルファの状態の定義
AlphaStateDef.seed_once(:id,
  { id: 16, dseq: '1', dname: '結成', alpha_alpha_def_id: 4 },
  { id: 17, dseq: '2', dname: '準備完了', alpha_alpha_def_id: 4 },
  { id: 18, dseq: '3', dname: '全員参加', alpha_alpha_def_id: 4 },
  { id: 19, dseq: '4', dname: '協調', alpha_alpha_def_id: 4 },
  { id: 20, dseq: '5', dname: '自己改善', alpha_alpha_def_id: 4 }
)
