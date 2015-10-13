X-GM-THRID: 6205040264708358144
X-Received: by 10.112.147.7 with SMTP id tg7mr6705271lbb.16.1444723863292;
        Tue, 13 Oct 2015 01:11:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.102 with SMTP id g99ls215307lfi.13.gmail; Tue, 13 Oct
 2015 01:11:02 -0700 (PDT)
X-Received: by 10.112.173.136 with SMTP id bk8mr6698890lbc.20.1444723862798;
        Tue, 13 Oct 2015 01:11:02 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i8si87658wib.1.2015.10.13.01.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:11:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,677,1437429600"; 
   d="scan'208";a="182489188"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2015 10:11:02 +0200
Date: Tue, 13 Oct 2015 10:11:00 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8712: Remove useless
 cast on void pointer
In-Reply-To: <55c502b96a27eaf4c78cbfdc373433e7cb898d42.1444723375.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.10.1510131009580.2391@hadrien>
References: <cover.1444723375.git.amitoj1606@gmail.com> <55c502b96a27eaf4c78cbfdc373433e7cb898d42.1444723375.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 13 Oct 2015, Amitoj Kaur Chawla wrote:

> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
>   *((T *)e)
> |
>   ((T *)x)[...]
> |
>   ((T *)x)->f
> |
> - (T *)
>   e
> )
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 105 ++++++++++-------------------
>  1 file changed, 35 insertions(+), 70 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
> index 77f01bf..af33e05 100644
> --- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
> +++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
> @@ -41,8 +41,7 @@ uint oid_null_function(struct oid_par_priv *poid_par_priv)
>  uint oid_rt_wireless_mode_hdl(struct oid_par_priv *poid_par_priv)
>  {
>  	uint status = RNDIS_STATUS_SUCCESS;
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);

The parentheses are not needed. Since they were probably put there because
of the cast, it would be reasonable to also drop them.

Likewise elsewhere.

julia

>  	if (poid_par_priv->type_of_oid == SET_OID) {
>  		if (poid_par_priv->information_buf_len >= sizeof(u8))
> @@ -66,8 +65,7 @@ uint oid_rt_wireless_mode_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_pro_write_bb_reg_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	struct bb_reg_param *pbbreg;
>  	u16 offset;
>  	u32 value;
> @@ -87,8 +85,7 @@ uint oid_rt_pro_write_bb_reg_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_pro_read_bb_reg_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	struct bb_reg_param *pbbreg;
>  	u16 offset;
>  	u32 value;
> @@ -109,8 +106,7 @@ uint oid_rt_pro_read_bb_reg_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_pro_write_rf_reg_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	struct rf_reg_param *pbbreg;
>  	u8 path;
>  	u8 offset;
> @@ -132,8 +128,7 @@ uint oid_rt_pro_write_rf_reg_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_pro_read_rf_reg_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	struct rf_reg_param *pbbreg;
>  	u8 path;
>  	u8 offset;
> @@ -260,8 +255,7 @@ int mp_start_joinbss(struct _adapter *padapter, struct ndis_802_11_ssid *pssid)
>  uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
>  					 *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32 ratevalue;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -278,8 +272,7 @@ uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
>
>  uint oid_rt_pro_start_test_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	uint status = RNDIS_STATUS_SUCCESS;
>  	u32 mode;
>  	u8 val8;
> @@ -307,8 +300,7 @@ uint oid_rt_pro_start_test_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	uint status = RNDIS_STATUS_SUCCESS;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -321,8 +313,7 @@ uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
>  uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv
>  						   *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32		Channel;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -339,8 +330,7 @@ uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv
>
>  uint oid_rt_pro_set_antenna_bb_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32 antenna;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -357,8 +347,7 @@ uint oid_rt_pro_set_antenna_bb_hdl(struct oid_par_priv *poid_par_priv)
>  uint oid_rt_pro_set_tx_power_control_hdl(
>  					struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32 tx_pwr_idx;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -377,8 +366,7 @@ uint oid_rt_pro_query_tx_packet_sent_hdl(
>  					struct oid_par_priv *poid_par_priv)
>  {
>  	uint status = RNDIS_STATUS_SUCCESS;
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID) {
>  		status = RNDIS_STATUS_NOT_ACCEPTED;
> @@ -397,8 +385,7 @@ uint oid_rt_pro_query_rx_packet_received_hdl(
>  					struct oid_par_priv *poid_par_priv)
>  {
>  	uint status = RNDIS_STATUS_SUCCESS;
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID) {
>  		status = RNDIS_STATUS_NOT_ACCEPTED;
> @@ -417,8 +404,7 @@ uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
>  					struct oid_par_priv *poid_par_priv)
>  {
>  	uint status = RNDIS_STATUS_SUCCESS;
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID) {
>  		status = RNDIS_STATUS_NOT_ACCEPTED;
> @@ -436,8 +422,7 @@ uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
>  uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
>  						*poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -449,8 +434,7 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
>  						    *poid_par_priv)
>  {
>  	uint status = RNDIS_STATUS_SUCCESS;
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -465,8 +449,7 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
>  uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
>  						 *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -477,8 +460,7 @@ uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
>  uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv
>  						  *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -493,8 +475,7 @@ uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv
>  uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv
>  						     *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -509,8 +490,7 @@ uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv
>  uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv
>  					  *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -522,8 +502,7 @@ uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv
>  uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv
>  					     *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32		bStartTest;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -536,8 +515,7 @@ uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv
>  uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv
>  						 *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32		bStartTest;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -550,8 +528,7 @@ uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv
>  uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv
>  						      *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32		bStartTest;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -564,8 +541,7 @@ uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv
>  uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
>  					      *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32		bStartTest;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -578,8 +554,7 @@ uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
>  uint oid_rt_pro_read_register_hdl(struct oid_par_priv
>  					 *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	uint status = RNDIS_STATUS_SUCCESS;
>  	struct mp_rw_reg *RegRWStruct;
>  	u16		offset;
> @@ -618,8 +593,7 @@ uint oid_rt_pro_read_register_hdl(struct oid_par_priv
>
>  uint oid_rt_pro_write_register_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	uint status = RNDIS_STATUS_SUCCESS;
>  	struct mp_rw_reg *RegRWStruct;
>  	u16		offset;
> @@ -678,8 +652,7 @@ uint oid_rt_pro_write_register_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_get_thermal_meter_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -706,8 +679,7 @@ uint oid_rt_get_thermal_meter_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_pro_read_efuse_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	uint status = RNDIS_STATUS_SUCCESS;
>
> @@ -736,8 +708,7 @@ uint oid_rt_pro_read_efuse_hdl(struct oid_par_priv *poid_par_priv)
>  /*------------------------------------------------------------------------*/
>  uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	uint status = RNDIS_STATUS_SUCCESS;
>
> @@ -765,8 +736,7 @@ uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
>  uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv
>  					      *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -782,8 +752,7 @@ uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv
>
>  uint oid_rt_get_efuse_max_size_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> @@ -808,8 +777,7 @@ uint oid_rt_pro_efuse_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_pro_efuse_map_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	uint status = RNDIS_STATUS_SUCCESS;
>  	u8		*data;
>
> @@ -840,8 +808,7 @@ uint oid_rt_pro_efuse_map_hdl(struct oid_par_priv *poid_par_priv)
>
>  uint oid_rt_set_bandwidth_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u32		bandwidth;
>
>  	if (poid_par_priv->type_of_oid != SET_OID)
> @@ -859,8 +826,7 @@ uint oid_rt_set_bandwidth_hdl(struct oid_par_priv *poid_par_priv)
>  uint oid_rt_set_rx_packet_type_hdl(struct oid_par_priv
>  					   *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>  	u8		rx_pkt_type;
>  	u32		rcr_val32;
>
> @@ -915,8 +881,7 @@ uint oid_rt_set_power_down_hdl(struct oid_par_priv *poid_par_priv)
>  /*-------------------------------------------------------------------------- */
>  uint oid_rt_get_power_mode_hdl(struct oid_par_priv *poid_par_priv)
>  {
> -	struct _adapter *Adapter = (struct _adapter *)
> -				   (poid_par_priv->adapter_context);
> +	struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
>  	if (poid_par_priv->type_of_oid != QUERY_OID)
>  		return RNDIS_STATUS_NOT_ACCEPTED;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/55c502b96a27eaf4c78cbfdc373433e7cb898d42.1444723375.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

