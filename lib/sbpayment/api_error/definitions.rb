module Sbpayment; class APIError

  PAYMENT_METHOD_DEFINITIONS = {
    '101' => 'クレジット',
    '304' => 'Yahoo!ウォレット',
    '305' => '楽天 ID 決済',
    '306' => 'PayPal',
    '307' => 'Yahoo!ウォレット(デジコン)',
    '309' => 'リクルートかんたん支払い',
    '401' => 'ドコモケータイ支払い',
    '402' => 'au かんたん決済',
    '405' => 'ソフトバンクまとめて支払い(B)',
    '513' => 'プリペイド決済',
    '701' => 'Web コンビニ',
    '702' => '総合振込',
    '703' => 'Pay-easy',
    '805' => '永久不滅ポイント決済',
    '806' => 'T ポイント',
    '999' => '共通'
  }

  TYPE_COMMON_DEFINITIONS = {
    '00' => 'XML 形式エラー',
    '01' => '支払方法有効性エラー',
    '02' => 'API リクエスト ID 存在エラー',
    '03' => '必須エラー',
    '04' => '属性エラー',
    '05' => '桁数エラー',
    '06' => '形式エラー',
    '07' => '定義値エラー',
    '08' => '使用していないエラーコード',
    '09' => 'ハッシュ値エラー',
    '10' => 'リクエスト有効期限エラー',
    '11' => '処理対象 SBPS トランザクション ID エラー',
    '12' => '処理対象トラッキング ID エラー',
    '13' => '指定不可エラー',
    '14' => 'マーチャント ID・サービス ID 不正エラー'
  }

  TYPE_DEFINITIONS = {
    '101' => {
      '20' => 'クレジットカード不正カードフィルタエラー',
      '21' => 'クレジットセンターエラー',
      '22' => 'クレジットカード利用限度額超過',
      '23' => 'クレジットカード使用不可',
      '24' => '暗証番号不正',
      '25' => 'クレジットカード利用限度回数超過',
      '26' => 'クレジットカード取扱不可',
      '27' => 'クレジットカード番号・有効期限誤り',
      '28' => '取引内容取扱不可',
      '29' => '指定ボーナス回数利用不可',
      '30' => '指定ボーナス月利用不可',
      '31' => '指定ボーナス金額利用不可',
      '32' => '指定支払開始月利用不可',
      '33' => '指定分割回数利用不可',
      '34' => '指定分割金額利用不可',
      '35' => '指定初回お支払い金額利用不可',
      '36' => 'その他与信エラー',
      '37' => '自動売上が設定されているため、売上要求は不要です。',
      '38' => 'G 式の場合、ファイルにて売上処理を行ってください。',
      '39' => '与信結果が存在しないため、売上処理を中止しました。',
      '40' => '与信取消済みのため、売上処理を中止しました。',
      '41' => '売上処理が完了済みのため、処理を中止しました。',
      '42' => '売上処理の処理日時は、与信日から 3 ヶ月目末日まで有効です。',
      '43' => 'G 式の場合、ファイルにて返金処理を行ってください。',
      '44' => '与信結果が存在しないため、返金処理を中止しました。',
      '45' => '与信取消済みのため、返金処理を中止しました。',
      '46' => '返金処理済みのため、返金処理を中止しました。',
      '47' => '継続課金中のため、返金処理を中止しました。',
      '48' => '使用していないエラーコード',
      '49' => '自動売上の場合、返金要求 API を使用して下さい。',
      '50' => 'P 式の場合、返金要求 API を使用して下さい。',
      '51' => '与信結果が存在しないため、与信取消処理を中止しました。',
      '52' => '与信取消済みのため、与信取消処理を中止しました。',
      '53' => '使用していないエラーコード',
      '54' => '継続課金中のため、与信取消処理を中止しました。',
      '55' => '使用していないエラーコード',
      '56' => '返金処理は、売上日以降かつ、与信取消日から 3 ヶ月目 末日まで有効です。',
      '57' => 'ご指定の継続課金は既に解約済みです。',
      '58' => '継続課金使用中エラー',
      '59' => '自動売上(コミットフラグ適用)の場合、コミット実施後、返金処理を実施して下さい。',
      '60' => '既に処理が完了しているため、コミット(取消)を実施出来ません。',
      '61' => 'セキュリティコード誤り',
      '62' => '使用していないエラーコード',
      '63' => '認証アシスト情報必須エラー (SmartLink 利用時対象)',
      '64' => 'SmartLink センターエラー',
      '65' => '決済機関判定エラー',
      '66' => '決済機関判定エラー',
      '67' => '決済機関判定エラー',
      '68' => '決済機関判定エラー',
      '69' => '決済機関判定エラー',
      '70' => '決済機関判定エラー',
      '71' => '決済機関判定エラー',
      '72' => '決済機関判定エラー',
      '73' => '決済機関判定エラー',
      '74' => '決済機関判定エラー',
      '75' => '決済機関判定エラー',
      '76' => '決済機関判定エラー',
      '77' => '決済機関判定エラー',
      '78' => 'クレジットカード情報保存フラグ指定エラー',
      '79' => '指定された金額が、与信時金額を越えているため、売上処理を中止しました。',
      'K0' => '売上処理未実施のため、部分返金処理を中止しました。',
      'K1' => '返金金額の合計が、売上時金額を超えているため、部分返金処理を中止しました。',
      'K2' => '決済機関判定エラー',
      'K3' => 'クレジットカードブランド返却フラグ指定エラー',
      'K4' => '与信結果が存在しないため、NG 与信情報変更処理を中止しました。',
      'K5' => '正常与信済みのため、NG 与信情報変更処理を中止しました。',
    },
    '701' => {
      '20' => 'クレジットカード不正カードフィルタエラー',
      '21' => 'クレジットセンターエラー',
      '22' => 'クレジットカード利用限度額超過',
      '23' => 'クレジットカード使用不可',
    }
  }

  ITEM_COMMON_DEFINITIONS = {
    '000' => 'API リクエスト ID',
    '001' => 'マーチャント ID',
    '002' => 'サービス ID',
    '003' => '顧客ID',
    '004' => '購入 ID',
    '005' => '商品 ID',
    '006' => '商品名称',
    '007' => '税額',
    '008' => '金額(税込)',
    '009' => '結果通知先 CGI',
    '010' => '自由欄 1',
    '011' => '自由欄 2',
    '012' => '自由欄 3',
    '013' => '請求番号枝番',
    '014' => '明細行番号',
    '015' => '明細商品 ID',
    '016' => '明細商品名称',
    '017' => '明細数量',
    '018' => '明細税額',
    '019' => '明細金額(税込)',
    '020' => '決済区分',
    '021' => '最終課金月',
    '022' => 'キャンペーンタイプ',
    '023' => 'リクエスト日時',
    '024' => 'リクエスト許容時間',
    '025' => 'チェックサム',
    '026' => '処理対象 SBPS トランザクション ID',
    '027' => '処理対象トラッキング ID',
    '028' => '3DES 暗号化フラグ',
    '029' => '処理日時',
    '030' => 'SBPS 顧客情報返却フラグ',
  }

  ITEM_DEFINITIONS = {
    '101' => {
      '200' => 'クレジットカード番号',
      '201' => 'クレジットカード有効期限',
      '202' => '取引区分',
      '203' => '分割回数',
      '204' => 'ボーナス併用回数',
      '205' => 'クレジットカード情報保存フラグ',
      '206' => '備考欄 1',
      '207' => '備考欄 2',
      '208' => '備考欄 3',
      '209' => 'セキュリティコード',
      '210' => '使用していないエラーコード',
      '211' => '使用していないエラーコード',
      '212' => '使用していないエラーコード',
      '213' => '使用していないエラーコード',
      '214' => '決済情報使用特定タイプ',
      '215' => '決済支払方法使用特定タイプ',
      '216' => '使用していないエラーコード ',
    }
  }

  class << self
    private

    def fix_definitions(definitions)
      definitions.each_pair do |key, summary_or_nested_definitions|
        key.freeze # Needless on current cruby. https://github.com/ruby/ruby/blob/805c20a8e59315f15dbb22ac1518de6a27385039/hash.c#L1514-L1521
                   # But the trick does not look a guaranteed spec of Ruby. This ensures it.

        case summary_or_nested_definitions
        when Hash
          fix_definitions summary_or_nested_definitions
        else
          # Many documents around this library are written in unnormalzed characters.
          # We should keep normalized string in these data. That helps to prevent from problem as `'ジ' != 'ジ'`.
          summary_or_nested_definitions.unicode_normalize!.freeze
        end
      end
      definitions.freeze
    end
  end

  constants.grep(/_DEFINITIONS\z/) do |const|
    fix_definitions const_get(const)
  end

end; end
