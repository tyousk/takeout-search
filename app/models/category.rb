class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '肉料理' },
    { id: 3, name: '魚料理' },
    { id: 4, name: '麺類' },
    { id: 5, name: '丼・揚げ物' },
    { id: 6, name: 'お好み焼き・粉物' },
    { id: 7, name: '中華' },
    { id: 8, name: '洋食' },
    { id: 9, name: 'ファーストフード' },
    { id: 10, name: 'ファミレス' },
    { id: 11, name: '各国料理' },
    { id: 12, name: 'スイーツ' },
    { id: 13, name: 'その他' }
  ]
end
