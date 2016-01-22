RSpec.shared_context "using shipping params" do

    let!(:params) do
      { :shipping_params =>
         {:destination =>
          { :country => "US",
            :state => "WA",
            :city => "Seattle",
            :postal_code => "98122"},
          :packages =>
            [{ :origin =>
              { :country => "US",
                :state => "MA",
                :city => "Hinsdale",
                :postal_code => "01235"},
              :package_items =>
              [{ :weight => 12,
                :height => 15,
                :length => 10,
                :width => 12 },
               { :weight => 3.453,
                 :height => 11,
                 :length => 1,
                 :width => 14 },
               { :weight => 30.45,
                 :height => 3,
                 :length => 40,
                 :width => 5 }]},
            { :origin =>
              { :country => "US",
                :state => "CT",
                :city => "New London",
                :postal_code => "06320"},
              :package_items =>
                [{:weight => 9.45,
                :height => 2,
                :length => 17,
                :width => 14 }]},
            { :origin =>
              { :country => "US",
                :state => "CA",
                :city => "San Fransisco",
                :postal_code => "94105"},
              :package_items =>
                [{:weight => 500,
                :height => 4,
                :length => 104,
                :width => 10 }]},
            { :origin =>
              { :country => "US",
                :state => "IL",
                :city => "Chicago",
                :postal_code => "60604"},
              :package_items =>
                [{:weight => 1000,
                :height => 4,
                :length => 90,
                :width => 10 }]},
              { :origin =>
                { :country => "US",
                  :state => "AK",
                  :city => "Juneau",
                  :postal_code => "99802"},
                :package_items =>
                  [{:weight => 80,
                  :height => 4,
                  :length => 80,
                  :width => 10 }]}]
          }
        }
    end
end
