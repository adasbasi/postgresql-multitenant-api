class User < ApplicationRecord
    validates :name, uniqueness: true    
    validates :subdomain, uniqueness: true    
    after_create :create_tenant
    private
    def create_tenant
        Apartment::Tenant.create(subdomain)
    end
end
