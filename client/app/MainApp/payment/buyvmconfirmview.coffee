class BuyVmConfirmView extends KDView

  setData: (data) ->
    super data

    @updatePartial ""
    @addSubView new PaymentMethodView {}, data.paymentInfo
    @addSubView new VmProductView {}, data.planInfo
    @addSubView new KDButtonView
      title     : 'Confirm'
      callback  : => @emit 'PaymentConfirmed', @getData()