var FormComponents = function () {



    var handleDatePickers = function () {

        if (jQuery().datepicker) {
            $('.date-picker').datepicker({
                rtl: App.isRTL(),
                autoclose: true
            });
            $('body').removeClass("modal-open"); // fix bug when inline picker is used in modal
        }
    }


    var handleDateRangePickers = function () {
        if (!jQuery().daterangepicker) {
            return;
        }

        $('#defaultrange').daterangepicker({
                opens: (App.isRTL() ? 'left' : 'right'),
                format: 'MM/DD/YYYY',
                separator: ' 至 ',
                startDate: moment().subtract('days', 29),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2014',
                locale: {
                    applyLabel: '套用',
                    cancelLabel: '取消',
                    fromLabel: '開始日期',
                    toLabel: '結束日期',
                    customRangeLabel: '自定區間',
                    daysOfWeek: ['日', '一', '二', '三', '四', '五', '六'],
                    monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
                    firstDay: 1
                }
            },
            function (start, end) {
                console.log("Callback has been called!");
                $('#defaultrange input').val(start.format('MM/D/YYYY') + ' - ' + end.format('MM/D/YYYY'));
            }
        );        

        $('#reportrange').daterangepicker({
                opens: (App.isRTL() ? 'left' : 'right'),
                startDate: moment().subtract('days', 29),
                endDate: moment(),
                minDate: '01/01/2012',
                maxDate: '12/31/2018',
                dateLimit: {
                    days: 60
                },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                ranges: {
                    '今日': [moment(), moment()],
                    '昨日': [moment().subtract('days', 1), moment().subtract('days', 1)],
                    '最近7日': [moment().subtract('days', 6), moment()],
                    '最近30日': [moment().subtract('days', 29), moment()],
                    '本月': [moment().startOf('month'), moment().endOf('month')],
                    '上個月': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                },
                buttonClasses: ['btn'],
                applyClass: 'btn-success',
                cancelClass: 'btn-default',
                format: 'MM/DD/YYYY',
                separator: ' 至 ',
                locale: {
                    applyLabel: '套用',
                    cancelLabel: '取消',
                    fromLabel: '開始日期',
                    toLabel: '結束日期',
                    customRangeLabel: '自定區間',
                    daysOfWeek: ['日', '一', '二', '三', '四', '五', '六'],
                    monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
                    firstDay: 1
                }
            },
            function (start, end) {
                /*console.log("Callback has been called!");*/
                $('#reportrange span').html(start.format('MM/DD/YYYY') + ' - ' + end.format('MM/DD/YYYY'));
            }
        );
        //Set the initial state of the picker label
        $('#reportrange span').html(moment().subtract('days', 29).format('MM/DD/YYYY') + ' - ' + moment().format('MM/DD/YYYY'));
    }


//    var handleInputMasks = function () {
//        $.extend($.inputmask.defaults, {
//            'autounmask': true
//        });
//
//        $("#mask_date").inputmask("d/m/y", {
//            autoUnmask: true
//        }); //direct mask        
//        $("#mask_date1").inputmask("d/m/y", {
//            "placeholder": "*"
//        }); //change the placeholder
//        $("#mask_date2").inputmask("d/m/y", {
//            "placeholder": "dd/mm/yyyy"
//        }); //multi-char placeholder
//        $("#mask_phone").inputmask("mask", {
//            "mask": "(99) 9999-9999"
//        }); //specifying fn & options
//        $("#mask_tin").inputmask({
//            "mask": "99-9999999"
//        }); //specifying options only
//        $("#mask_number").inputmask({
//            "mask": "9",
//            "repeat": 10,
//            "greedy": false
//        }); // ~ mask "9" or mask "99" or ... mask "9999999999"
//        $("#mask_decimal").inputmask('decimal', {
//            rightAlignNumerics: false
//        }); //disables the right alignment of the decimal input
//    }
    return {
        //main function to initiate the module
        init: function () {
            handleDatePickers();
            handleDateRangePickers();
//            handleInputMasks();
        }
    };

}();