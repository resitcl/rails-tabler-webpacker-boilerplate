import './table.css';
import { dataTableEs } from './datatable.es';
import Datatables from 'datatables.net-bs4';

window.initializeTable = (elementID, config) => {
  const table = $(`#${elementID}`);
  table.DataTable({
    ...config,
    dom: 'Brtip',
    pageLength: 10,
    responsive: true,
    language: dataTableEs,
  });
};
