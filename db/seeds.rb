# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name:'shiori')

all_pieces = [
  ['R・シュトラウス',['死と浄化']],
  ['ウェーバー',['オベロン']],
  ['ヴェルディ',['運命の力']],
  ['カリンニコフ',['交響曲第1番']],
  ['グノー',['ファウスト']],
  ['グラズノフ',['交響曲第5番']],
  ['サンサーンス',['ヴァイオリン協奏曲第3番']],
  ['シベリウス',['エン・サガ','カレリア','フィンランディア','交響曲第1番','交響曲第2番','交響曲第3番']],
  ['シューベルト',['交響曲第8番']],
  ['シューマン',['ジュリアス・シーザー','マンフレッド序曲','交響曲第1番','交響曲第4番']],
  ['ショスタコーヴィチ',['祝典序曲']],
  ['スッペ',['軽騎兵']],
  ['チャイコフスキー',['1812年','スラブ行進曲','交響曲第4番','交響曲第5番','交響曲第6番','白鳥の湖','眠れる森の美女']],
  ['ドヴォルザーク',['スラブ舞曲','チェコ組曲','英雄の歌','交響曲第6番','交響曲第8番','祝典行進曲']],
  ['ハチャトゥリアン',['仮面舞踏会']],
  ['ビゼー',['カルメン']],
  ['プッチーニ',['交響的前奏曲']],
  ['ブラームス',['交響曲第1番','交響曲第3番','交響曲第4番']],
  ['ブルックナー',['交響曲第4番']],
  ['プロコフィエフ',['キージェ中尉']],
  ['プロコフィエフ',['交響曲第4番']],
  ['フンパーディンク',['ヘンゼルとグレーテル']],
  ['ベートーヴェン',['エグモント','交響曲第2番','交響曲第9番']],
  ['ベートーベン',['ピアノ協奏曲第5番']],
  ['マーラー',['さすらう若人の歌','交響曲第1番']],
  ['ムソルグスキー',['禿山の一夜']],
  ['ヨハン・シュトラウス1世',['ラデツキー']],
  ['ヨハン・シュトラウス2世',['こうもり']],
  ['リスト',['レ・プレリュード']],
  ['リムスキー＝コルサコフ',['皇帝の花嫁']],
  ['ワーグナー',['タンホイザー','リエンツィ']],
  ['福田陽介',['風の舞']],
]
all_pieces.each do |rec|
  composer = Composer.create!(name:rec[0])
  rec[1].each do |apiece|
    piece = Piece.create!(name:apiece, composer: composer)
    UserPiece.create!(user:user, piece:piece)
  end
end
