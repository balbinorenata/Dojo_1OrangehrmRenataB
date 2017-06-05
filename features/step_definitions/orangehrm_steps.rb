Dado(/^que ele esteja logado no site$/) do
 visit "http://opensource.demo.orangehrmlive.com/"
 fill_in('txtUsername', :with => 'Admin')
 fill_in('txtPassword', :with => 'admin')
 find('#btnLogin').click
end

Quando(/^inserir os dados do usuário$/) do
click_link('PIM')
click_link('menu_pim_addEmployee')
fill_in('firstName', :with => 'Edinalva')
fill_in('middleName', :with => 'Balbino')
fill_in('lastName', :with => 'Morais')
click_button('Save')
end

Então(/^usuário será cadastrado$/) do
assert_text('Edinalva Balbino Morais')
end

Quando(/^inserir os novos dados do usuário$/) do
click_link('PIM')
fill_in('empsearch[employee_name][empName]', :with => 'Edinalva Balbino Morais')
click_button('searchBtn')
click_link('Morais')
click_button('btnSave')
fill_in('personal[txtEmpMiddleName]', :with => 'B')
click_button('btnSave')

sleep 3

end

Então(/^usuário tera os dados editados$/) do
 assert_text('Edinalva B Morais')
 sleep 3
end

