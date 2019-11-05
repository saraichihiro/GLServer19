# -*- coding: utf-8 -*-

# フレームワーク定義
AlphaFrameworkDef.seed_once(:id,
  { id: 1, dname: 'ラーニングアルファ', ddescription: 'アジャイルPBLのためのアルファ'}
)

# アルファ定義
AlphaAlphaDef.seed_once(:id,
  { id: 1, dseq: '1', dname: '要求', alpha_framework_def_id: 1 },
  { id: 2, dseq: '2', dname: 'システム', alpha_framework_def_id: 1 },
  { id: 3, dseq: '3', dname: '仕事', alpha_framework_def_id: 1 },
  { id: 4, dseq: '4', dname: 'チーム', alpha_framework_def_id: 1 },
)