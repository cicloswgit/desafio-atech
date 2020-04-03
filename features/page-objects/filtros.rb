class Filtros < SitePrism::Section
  elements  :campos_data, 'input.md-datepicker-input'
  elements  :combos_locais, 'select[name="grupo"]'  
end