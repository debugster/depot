import React from 'react'

import NoPayType from './NoPayType'
import CreditCardPayType from './CreditCardPayType'
import CheckPayType from './CheckPayType'
import PurchaseOrderPayType from './PurchaseOrderPayType'

class PayTypeSelector extends React.Component {
  constructor(props) {
    super(props);
    this.onPayTypeSelected = this.onPayTypeSelected.bind(this);
    this.state = { selectedPayType: null };
  }

  render() {
    let PayTypeCustomComponent = NoPayType;
    let currentState = this.state.selectedPayType;
    if (currentState == "Credit Card") {
      PayTypeCustomComponent = CreditCardPayType;
    }
    else if (currentState == "Check") {
      PayTypeCustomComponent = CheckPayType;
    }
    else if (currentState == "Purchase Order") {
      PayTypeCustomComponent = PurchaseOrderPayType;
    }

    return (
        <div>
          <div className="field">
            <label htmlFor="order_pay_type">Pay Type</label>
            <select name="order[pay_type]" id="order_pay_type" onChange={this.onPayTypeSelected}>
              <option value="">Select a payment method</option>
              <option value="Check">Check</option>
              <option value="Credit Card">Credit Card</option>
              <option value="Purchase Order">Purchase Order</option>
            </select>
          </div>
          <PayTypeCustomComponent />
        </div>
    );
  }
}
// export default PayTypeSelector