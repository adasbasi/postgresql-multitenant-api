if User.count == 0
  %w(ali veli fa).each do |tenant|
    User.create(name: tenant, subdomain: tenant)

    sleep(0.2)

    Apartment::Tenant.switch(tenant)
    (1..5).to_a.each do |i|
      title = "P_#{tenant}_#{i + 1}"
      Project.create(title: title)
    end
  end
end
