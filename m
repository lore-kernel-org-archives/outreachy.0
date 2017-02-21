X-GM-THRID: 6389607922927665152
X-Received: by 10.46.77.207 with SMTP id c76mr2790086ljd.25.1487699939008;
        Tue, 21 Feb 2017 09:58:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.150 with SMTP id c22ls777437ljd.38.gmail; Tue, 21 Feb
 2017 09:58:58 -0800 (PST)
X-Received: by 10.46.80.86 with SMTP id v22mr2775252ljd.27.1487699938170;
        Tue, 21 Feb 2017 09:58:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 14si1149335wmn.2.2017.02.21.09.58.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 09:58:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,190,1484002800"; 
   d="scan'208";a="261507519"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2017 18:58:55 +0100
Date: Tue, 21 Feb 2017 18:58:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: Drop useless
 initialisation
In-Reply-To: <b2c93b5d-3df1-4b04-b636-1235af0a7006@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702211855040.3448@hadrien>
References: <20170221170356.GA12793@singhal-Inspiron-5558> <alpine.DEB.2.20.1702211836430.3448@hadrien> <b2c93b5d-3df1-4b04-b636-1235af0a7006@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-861371932-1487699930=:3448"

--8323329-861371932-1487699930=:3448
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

>       Also, note that the above semantic patch is not completely safe,
>       because
>       the code could be, eg:
>
>       int a = 0;
>       a = a + 1;
>
>       In that case, the initialization of a would be needed.  You
>       should check
>       each case for this issue.
>
>
> I have checked that case before sending the patch by diff .

OK, good :)

> Should I cut this patch as a totally different patch series and do I have 
> to mention v2.
>
>  If I have to mention v2 then how will I relate that new patch series with
> this 
> particular patch.

It's true that the subject lines will be completely different.  Maybe just
respond to your previous patch and say to ignore it, and then start over
with these patches, with one patch per driver.

julia


> Thanks,
> Simran
>  
>
>       julia
>
>       > Signed-off-by: simran singhal <singhal...@gmail.com>
>       > ---
>       >  drivers/staging/android/ion/ion_heap.c              | 2 +-
>       >  drivers/staging/gdm724x/gdm_lte.c                   | 2 +-
>       >  drivers/staging/gdm724x/gdm_mux.c                   | 4 ++--
>       >  drivers/staging/iio/addac/adt7316-i2c.c             | 2 +-
>       >  drivers/staging/lustre/lustre/ldlm/ldlm_request.c   | 2 +-
>       >  drivers/staging/lustre/lustre/obdclass/cl_page.c    | 2 +-
>       >  drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c | 2 +-
>       >  drivers/staging/media/s5p-cec/s5p_cec.c             | 2 +-
>       >  drivers/staging/rtl8188eu/core/rtw_ap.c             | 4 ++--
>       >  drivers/staging/rtl8188eu/core/rtw_efuse.c          | 2 +-
>       >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c       | 2 +-
>       >  drivers/staging/rtl8188eu/core/rtw_recv.c           | 4 ++--
>       >  drivers/staging/rtl8188eu/core/rtw_sreset.c         | 2 +-
>       >  drivers/staging/rtl8188eu/core/rtw_wlan_util.c      | 2 +-
>       >  drivers/staging/rtl8188eu/core/rtw_xmit.c           | 2 +-
>       >  drivers/staging/rtl8188eu/hal/hal_intf.c            | 2 +-
>       >  drivers/staging/rtl8188eu/os_dep/ioctl_linux.c      | 2 +-
>       >  drivers/staging/rtl8188eu/os_dep/xmit_linux.c       | 2 +-
>       >  drivers/staging/rtl8712/rtl8712_xmit.c              | 2 +-
>       >  drivers/staging/rtl8712/rtl871x_mp.c                | 6
>       +++---
>       >  drivers/staging/rts5208/rtsx_chip.c                 | 2 +-
>       >  drivers/staging/rts5208/sd.c                        | 4 ++--
>       >  drivers/staging/sm750fb/ddk750_chip.c               | 2 +-
>       >  drivers/staging/sm750fb/ddk750_power.c              | 2 +-
>       >  drivers/staging/speakup/speakup_ltlk.c              | 2 +-
>       >  drivers/staging/unisys/visorbus/visorchipset.c      | 4 ++--
>       >  drivers/staging/wlan-ng/cfg80211.c                  | 2 +-
>       >  drivers/staging/xgifb/XGI_main_26.c                 | 2 +-
>       >  28 files changed, 35 insertions(+), 35 deletions(-)
>       >
>       > diff --git a/drivers/staging/android/ion/ion_heap.c
>       b/drivers/staging/android/ion/ion_heap.c
>       > index 4e5c0f1..4bd844b 100644
>       > --- a/drivers/staging/android/ion/ion_heap.c
>       > +++ b/drivers/staging/android/ion/ion_heap.c
>       > @@ -270,7 +270,7 @@ static unsigned long
>       ion_heap_shrink_count(struct shrinker *shrinker,
>       >  {
>       >          struct ion_heap *heap = container_of(shrinker, struct
>       ion_heap,
>       >                                               shrinker);
>       > -        int total = 0;
>       > +        int total;
>       >
>       >          total = ion_heap_freelist_size(heap) / PAGE_SIZE;
>       >          if (heap->ops->shrink)
>       > diff --git a/drivers/staging/gdm724x/gdm_lte.c
>       b/drivers/staging/gdm724x/gdm_lte.c
>       > index a182757..e0f0912 100644
>       > --- a/drivers/staging/gdm724x/gdm_lte.c
>       > +++ b/drivers/staging/gdm724x/gdm_lte.c
>       > @@ -353,7 +353,7 @@ static s32 gdm_lte_tx_nic_type(struct
>       net_device *dev, struct sk_buff *skb)
>       >          struct ipv6hdr *ipv6;
>       >          int mac_proto;
>       >          void *network_data;
>       > -        u32 nic_type = 0;
>       > +        u32 nic_type;
>       >
>       >          /* NIC TYPE is based on the nic_id of this net_device
>       */
>       >          nic_type = 0x00000010 | nic->nic_id;
>       > diff --git a/drivers/staging/gdm724x/gdm_mux.c
>       b/drivers/staging/gdm724x/gdm_mux.c
>       > index 4009691..aba32e2 100644
>       > --- a/drivers/staging/gdm724x/gdm_mux.c
>       > +++ b/drivers/staging/gdm724x/gdm_mux.c
>       > @@ -62,7 +62,7 @@ static int packet_type_to_index(u16
>       packetType)
>       >
>       >  static struct mux_tx *alloc_mux_tx(int len)
>       >  {
>       > -        struct mux_tx *t = NULL;
>       > +        struct mux_tx *t;
>       >
>       >          t = kzalloc(sizeof(*t), GFP_ATOMIC);
>       >          if (!t)
>       > @@ -91,7 +91,7 @@ static void free_mux_tx(struct mux_tx *t)
>       >
>       >  static struct mux_rx *alloc_mux_rx(void)
>       >  {
>       > -        struct mux_rx *r = NULL;
>       > +        struct mux_rx *r;
>       >
>       >          r = kzalloc(sizeof(*r), GFP_KERNEL);
>       >          if (!r)
>       > diff --git a/drivers/staging/iio/addac/adt7316-i2c.c
>       b/drivers/staging/iio/addac/adt7316-i2c.c
>       > index f66dd3e..af56dba 100644
>       > --- a/drivers/staging/iio/addac/adt7316-i2c.c
>       > +++ b/drivers/staging/iio/addac/adt7316-i2c.c
>       > @@ -41,7 +41,7 @@ static int adt7316_i2c_read(void *client, u8
>       reg, u8 *data)
>       >  static int adt7316_i2c_write(void *client, u8 reg, u8 data)
>       >  {
>       >          struct i2c_client *cl = client;
>       > -        int ret = 0;
>       > +        int ret;
>       >
>       >          ret = i2c_smbus_write_byte_data(cl, reg, data);
>       >          if (ret < 0)
>       > diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
>       b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
>       > index c1f8693..9c1b1be 100644
>       > --- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
>       > +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c
>       > @@ -377,7 +377,7 @@ int ldlm_cli_enqueue_fini(struct
>       obd_export *exp, struct ptlrpc_request *req,
>       >          }
>       >
>       >          if (lvb_len > 0) {
>       > -                int size = 0;
>       > +                int size;
>       >
>       >                  size = req_capsule_get_size(&req->rq_pill,
>       &RMF_DLM_LVB,
>       >                                              RCL_SERVER);
>       > diff --git a/drivers/staging/lustre/lustre/obdclass/cl_page.c
>       b/drivers/staging/lustre/lustre/obdclass/cl_page.c
>       > index cd9a40c..fdaebc3 100644
>       > --- a/drivers/staging/lustre/lustre/obdclass/cl_page.c
>       > +++ b/drivers/staging/lustre/lustre/obdclass/cl_page.c
>       > @@ -1002,7 +1002,7 @@ EXPORT_SYMBOL(cl_page_slice_add);
>       >   */
>       >  struct cl_client_cache *cl_cache_init(unsigned long
>       lru_page_max)
>       >  {
>       > -        struct cl_client_cache        *cache = NULL;
>       > +        struct cl_client_cache        *cache;
>       >
>       >          cache = kzalloc(sizeof(*cache), GFP_KERNEL);
>       >          if (!cache)
>       > diff --git
>       a/drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c
>       b/drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c
>       > index ce95e0f..8e7e43d 100644
>       > --- a/drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c
>       > +++ b/drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c
>       > @@ -171,7 +171,7 @@ void s5p_cec_set_addr(struct s5p_cec_dev
>       *cec, u32 addr)
>       >
>       >  u32 s5p_cec_get_status(struct s5p_cec_dev *cec)
>       >  {
>       > -        u32 status = 0;
>       > +        u32 status;
>       >
>       >          status = readb(cec->reg + S5P_CEC_STATUS_0);
>       >          status |= readb(cec->reg + S5P_CEC_STATUS_1) << 8;
>       > diff --git a/drivers/staging/media/s5p-cec/s5p_cec.c
>       b/drivers/staging/media/s5p-cec/s5p_cec.c
>       > index 2a07968..7ec3770 100644
>       > --- a/drivers/staging/media/s5p-cec/s5p_cec.c
>       > +++ b/drivers/staging/media/s5p-cec/s5p_cec.c
>       > @@ -83,7 +83,7 @@ static int s5p_cec_adap_transmit(struct
>       cec_adapter *adap, u8 attempts,
>       >  static irqreturn_t s5p_cec_irq_handler(int irq, void *priv)
>       >  {
>       >          struct s5p_cec_dev *cec = priv;
>       > -        u32 status = 0;
>       > +        u32 status;
>       >
>       >          status = s5p_cec_get_status(cec);
>       >
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c
>       b/drivers/staging/rtl8188eu/core/rtw_ap.c
>       > index 1c8fa3a..cbacbe9 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>       > @@ -508,7 +508,7 @@ void add_RATid(struct adapter *padapter,
>       struct sta_info *psta, u8 rssi_level)
>       >          init_rate = get_highest_rate_idx(tx_ra_bitmap &
>       0x0fffffff) & 0x3f;
>       >
>       >          if (psta->aid < NUM_STA) {
>       > -                u8 arg = 0;
>       > +                u8 arg;
>       >
>       >                  arg = psta->mac_id & 0x1f;
>       >
>       > @@ -591,7 +591,7 @@ static void update_bmc_sta(struct adapter
>       *padapter)
>       >                  rtw_hal_set_odm_var(padapter,
>       HAL_ODM_STA_INFO, psta, true);
>       >
>       >                  {
>       > -                        u8 arg = 0;
>       > +                        u8 arg;
>       >
>       >                          arg = psta->mac_id&0x1f;
>       >                          arg |= BIT(7);
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c
>       b/drivers/staging/rtl8188eu/core/rtw_efuse.c
>       > index b9bdff0..98b3bd7 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
>       > @@ -747,7 +747,7 @@ static bool
>       hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8
>       efuseType, u
>       >                                  /*  Here to write partial
>       data */
>       >                                  badworden =
>       Efuse_WordEnableDataWrite(pAdapter, startAddr+1, matched_wden,
>       pTargetPkt->data);
>       >                                  if (badworden != 0x0F) {
>       >
>       -                                        u32        PgWriteSuccess
>       = 0;
>       >
>       +                                        u32        PgWriteSuccess;
>       >                                          /*  if write fail on
>       some words, write these bad words again */
>       >
>       >                                          PgWriteSuccess =
>       Efuse_PgPacketWrite(pAdapter, pTargetPkt->offset, badworden,
>       pTargetPkt->data);
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>       b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>       > index 2933479..118286c 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
>       > @@ -296,7 +296,7 @@ static int update_hidden_ssid(u8 *ies, u32
>       ies_len, u8 hidden_ssid_mode)
>       >                  switch (hidden_ssid_mode) {
>       >                  case 1: {
>       >                          u8 *next_ie = ssid_ie + 2 +
>       ssid_len_ori;
>       > -                        u32 remain_len = 0;
>       > +                        u32 remain_len;
>       >
>       >                          remain_len = ies_len - (next_ie -
>       ies);
>       >
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
>       b/drivers/staging/rtl8188eu/core/rtw_recv.c
>       > index 1bc7b97..e6d4553 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
>       > @@ -535,7 +535,7 @@ static void process_pwrbit_data(struct
>       adapter *padapter,
>       >          u8 *ptr = precv_frame->rx_data;
>       >          struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
>       >          struct sta_priv *pstapriv = &padapter->stapriv;
>       > -        struct sta_info *psta = NULL;
>       > +        struct sta_info *psta;
>       >
>       >          psta = rtw_get_stainfo(pstapriv, pattrib->src);
>       >
>       > @@ -560,7 +560,7 @@ static void process_wmmps_data(struct
>       adapter *padapter,
>       >  #ifdef CONFIG_88EU_AP_MODE
>       >          struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
>       >          struct sta_priv *pstapriv = &padapter->stapriv;
>       > -        struct sta_info *psta = NULL;
>       > +        struct sta_info *psta;
>       >
>       >          psta = rtw_get_stainfo(pstapriv, pattrib->src);
>       >
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_sreset.c
>       b/drivers/staging/rtl8188eu/core/rtw_sreset.c
>       > index a198c57..7cda913 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_sreset.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_sreset.c
>       > @@ -28,7 +28,7 @@ u8 sreset_get_wifi_status(struct adapter
>       *padapter)
>       >          struct sreset_priv *psrtpriv =
>       &padapter->HalData->srestpriv;
>       >
>       >          u8 status = WIFI_STATUS_SUCCESS;
>       > -        u32 val32 = 0;
>       > +        u32 val32;
>       >
>       >          val32 = usb_read32(padapter, REG_TXDMA_STATUS);
>       >          if (val32 == 0xeaeaeaea) {
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
>       b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
>       > index f6f1b09..a168cc0 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
>       > @@ -1245,7 +1245,7 @@ unsigned int
>       update_supported_rate(unsigned char *ptn, unsigned int ptn_sz)
>       >
>       >  unsigned int update_MSC_rate(struct ieee80211_ht_cap
>       *pHT_caps)
>       >  {
>       > -        unsigned int mask = 0;
>       > +        unsigned int mask;
>       >
>       >          mask = (pHT_caps->mcs.rx_mask[0] << 12) |
>       >                 (pHT_caps->mcs.rx_mask[1] << 20);
>       > diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c
>       b/drivers/staging/rtl8188eu/core/rtw_xmit.c
>       > index 484d20a..d89bc34 100644
>       > --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
>       > +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
>       > @@ -928,7 +928,7 @@ s32 rtw_txframes_sta_ac_pending(struct
>       adapter *padapter, struct pkt_attrib *pat
>       >   */
>       >  u32 rtw_calculate_wlan_pkt_size_by_attribue(struct pkt_attrib
>       *pattrib)
>       >  {
>       > -        u32        len = 0;
>       > +        u32        len;
>       >
>       >          len = pattrib->hdrlen + pattrib->iv_len; /*  WLAN
>       Header and IV */
>       >          len += SNAP_SIZE + sizeof(u16); /*  LLC */
>       > diff --git a/drivers/staging/rtl8188eu/hal/hal_intf.c
>       b/drivers/staging/rtl8188eu/hal/hal_intf.c
>       > index a11c7b4..e723fb5 100644
>       > --- a/drivers/staging/rtl8188eu/hal/hal_intf.c
>       > +++ b/drivers/staging/rtl8188eu/hal/hal_intf.c
>       > @@ -44,7 +44,7 @@ uint         rtw_hal_init(struct adapter
>       *adapt)
>       >
>       >  uint rtw_hal_deinit(struct adapter *adapt)
>       >  {
>       > -        uint        status = _SUCCESS;
>       > +        uint        status;
>       >
>       >          status = rtl8188eu_hal_deinit(adapt);
>       >
>       > diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
>       b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
>       > index 763eccd..e7fe8aa 100644
>       > --- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
>       > +++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
>       > @@ -1496,7 +1496,7 @@ static int rtw_wx_get_rate(struct
>       net_device *dev,
>       >                               struct iw_request_info *info,
>       >                               union iwreq_data *wrqu, char
>       *extra)
>       >  {
>       > -        u16 max_rate = 0;
>       > +        u16 max_rate;
>       >
>       >          max_rate = rtw_get_cur_max_rate((struct adapter
>       *)rtw_netdev_priv(dev));
>       >
>       > diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
>       b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
>       > index e097c61..2e06cdb 100644
>       > --- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
>       > +++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
>       > @@ -43,7 +43,7 @@ void _rtw_open_pktfile(struct sk_buff
>       *pktptr, struct pkt_file *pfile)
>       >
>       >  uint _rtw_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint
>       rlen)
>       >  {
>       > -        uint        len = 0;
>       > +        uint        len;
>       >
>       >
>       >          len =  rtw_remainder_len(pfile);
>       > diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c
>       b/drivers/staging/rtl8712/rtl8712_xmit.c
>       > index c4f03a6..7167d76 100644
>       > --- a/drivers/staging/rtl8712/rtl8712_xmit.c
>       > +++ b/drivers/staging/rtl8712/rtl8712_xmit.c
>       > @@ -750,7 +750,7 @@ static void dump_xframe(struct _adapter
>       *padapter,
>       >
>       >  int r8712_xmit_direct(struct _adapter *padapter, struct
>       xmit_frame *pxmitframe)
>       >  {
>       > -        int res = _SUCCESS;
>       > +        int res;
>       >
>       >          res = r8712_xmitframe_coalesce(padapter,
>       pxmitframe->pkt, pxmitframe);
>       >          pxmitframe->pkt = NULL;
>       > diff --git a/drivers/staging/rtl8712/rtl871x_mp.c
>       b/drivers/staging/rtl8712/rtl871x_mp.c
>       > index 3c10a2c..ccc4358 100644
>       > --- a/drivers/staging/rtl8712/rtl871x_mp.c
>       > +++ b/drivers/staging/rtl8712/rtl871x_mp.c
>       > @@ -295,7 +295,7 @@ void r8712_SetChannel(struct _adapter
>       *pAdapter)
>       >
>       >  static void SetCCKTxPower(struct _adapter *pAdapter, u8
>       TxPower)
>       >  {
>       > -        u16 TxAGC = 0;
>       > +        u16 TxAGC;
>       >
>       >          TxAGC = TxPower;
>       >          set_bb_reg(pAdapter, rTxAGC_CCK_Mcs32, bTxAGCRateCCK,
>       TxAGC);
>       > @@ -722,7 +722,7 @@ static u32 GetPhyRxPktCounts(struct
>       _adapter *pAdapter, u32 selbit)
>       >
>       >  u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter)
>       >  {
>       > -        u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0;
>       > +        u32 OFDM_cnt, CCK_cnt = 0, HT_cnt = 0;
>       >
>       >          OFDM_cnt = GetPhyRxPktCounts(pAdapter,
>       OFDM_MPDU_OK_BIT);
>       >          CCK_cnt = GetPhyRxPktCounts(pAdapter,
>       CCK_MPDU_OK_BIT);
>       > @@ -732,7 +732,7 @@ u32 r8712_GetPhyRxPktReceived(struct
>       _adapter *pAdapter)
>       >
>       >  u32 r8712_GetPhyRxPktCRC32Error(struct _adapter *pAdapter)
>       >  {
>       > -        u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0;
>       > +        u32 OFDM_cnt, CCK_cnt = 0, HT_cnt = 0;
>       >
>       >          OFDM_cnt = GetPhyRxPktCounts(pAdapter,
>       OFDM_MPDU_FAIL_BIT);
>       >          CCK_cnt = GetPhyRxPktCounts(pAdapter,
>       CCK_MPDU_FAIL_BIT);
>       > diff --git a/drivers/staging/rts5208/rtsx_chip.c
>       b/drivers/staging/rts5208/rtsx_chip.c
>       > index 3511157..5ec9d34 100644
>       > --- a/drivers/staging/rts5208/rtsx_chip.c
>       > +++ b/drivers/staging/rts5208/rtsx_chip.c
>       > @@ -2086,7 +2086,7 @@ int rtsx_pre_handle_interrupt(struct
>       rtsx_chip *chip)
>       >          u32 status, int_enable;
>       >          bool exit_ss = false;
>       >  #ifdef SUPPORT_OCP
>       > -        u32 ocp_int = 0;
>       > +        u32 ocp_int;
>       >
>       >          ocp_int = OC_INT;
>       >  #endif
>       > diff --git a/drivers/staging/rts5208/sd.c
>       b/drivers/staging/rts5208/sd.c
>       > index bdd35b6..53db0cb 100644
>       > --- a/drivers/staging/rts5208/sd.c
>       > +++ b/drivers/staging/rts5208/sd.c
>       > @@ -514,7 +514,7 @@ static int sd_check_csd(struct rtsx_chip
>       *chip, char check_wp)
>       >                                          (1 << (c_size_mult +
>       2)))
>       >                                  << (blk_size - 9);
>       >                  } else {
>       > -                        u32 total_sector = 0;
>       > +                        u32 total_sector;
>       >
>       >                          total_sector = (((u32)rsp[8] & 0x3f)
>       << 16) |
>       >                                  ((u32)rsp[9] << 8) |
>       (u32)rsp[10];
>       > @@ -617,7 +617,7 @@ static void sd_choose_proper_clock(struct
>       rtsx_chip *chip)
>       >  static int sd_set_clock_divider(struct rtsx_chip *chip, u8
>       clk_div)
>       >  {
>       >          int retval;
>       > -        u8 mask = 0, val = 0;
>       > +        u8 mask, val = 0;
>       >
>       >          mask = 0x60;
>       >          if (clk_div == SD_CLK_DIVIDE_0)
>       > diff --git a/drivers/staging/sm750fb/ddk750_chip.c
>       b/drivers/staging/sm750fb/ddk750_chip.c
>       > index 9aaf1fd..b2fbcfac 100644
>       > --- a/drivers/staging/sm750fb/ddk750_chip.c
>       > +++ b/drivers/staging/sm750fb/ddk750_chip.c
>       > @@ -389,7 +389,7 @@ unsigned int sm750_format_pll_reg(struct
>       pll_value *pPLL)
>       >          unsigned int OD = pPLL->OD;
>       >          unsigned int M = pPLL->M;
>       >          unsigned int N = pPLL->N;
>       > -        unsigned int reg = 0;
>       > +        unsigned int reg;
>       >
>       >          /*
>       >           * Note that all PLL's have the same format. Here, we
>       just use
>       > diff --git a/drivers/staging/sm750fb/ddk750_power.c
>       b/drivers/staging/sm750fb/ddk750_power.c
>       > index 6167e30..baf80c0 100644
>       > --- a/drivers/staging/sm750fb/ddk750_power.c
>       > +++ b/drivers/staging/sm750fb/ddk750_power.c
>       > @@ -31,7 +31,7 @@ static unsigned int get_power_mode(void)
>       >   */
>       >  void sm750_set_power_mode(unsigned int mode)
>       >  {
>       > -        unsigned int ctrl = 0;
>       > +        unsigned int ctrl;
>       >
>       >          ctrl = PEEK32(POWER_MODE_CTRL) &
>       ~POWER_MODE_CTRL_MODE_MASK;
>       >
>       > diff --git a/drivers/staging/speakup/speakup_ltlk.c
>       b/drivers/staging/speakup/speakup_ltlk.c
>       > index b474e8b..4f7fb35 100644
>       > --- a/drivers/staging/speakup/speakup_ltlk.c
>       > +++ b/drivers/staging/speakup/speakup_ltlk.c
>       > @@ -156,7 +156,7 @@ static void synth_interrogate(struct
>       spk_synth *synth)
>       >
>       >  static int synth_probe(struct spk_synth *synth)
>       >  {
>       > -        int failed = 0;
>       > +        int failed;
>       >
>       >          failed = spk_serial_synth_probe(synth);
>       >          if (failed == 0)
>       > diff --git a/drivers/staging/unisys/visorbus/visorchipset.c
>       b/drivers/staging/unisys/visorbus/visorchipset.c
>       > index 336af52..576e7a9 100644
>       > --- a/drivers/staging/unisys/visorbus/visorchipset.c
>       > +++ b/drivers/staging/unisys/visorbus/visorchipset.c
>       > @@ -350,7 +350,7 @@ static DEVICE_ATTR_RW(remaining_steps);
>       >  static uuid_le
>       >  parser_id_get(struct parser_context *ctx)
>       >  {
>       > -        struct spar_controlvm_parameters_header *phdr = NULL;
>       > +        struct spar_controlvm_parameters_header *phdr;
>       >
>       >          phdr = (struct spar_controlvm_parameters_header
>       *)(ctx->data);
>       >          return phdr->id;
>       > @@ -396,7 +396,7 @@ parser_string_get(struct parser_context
>       *ctx)
>       >  static void *
>       >  parser_name_get(struct parser_context *ctx)
>       >  {
>       > -        struct spar_controlvm_parameters_header *phdr = NULL;
>       > +        struct spar_controlvm_parameters_header *phdr;
>       >
>       >          phdr = (struct spar_controlvm_parameters_header
>       *)(ctx->data);
>       >          ctx->curr = ctx->data + phdr->name_offset;
>       > diff --git a/drivers/staging/wlan-ng/cfg80211.c
>       b/drivers/staging/wlan-ng/cfg80211.c
>       > index aa0e5a3..b24d9bf 100644
>       > --- a/drivers/staging/wlan-ng/cfg80211.c
>       > +++ b/drivers/staging/wlan-ng/cfg80211.c
>       > @@ -244,7 +244,7 @@ static int prism2_set_default_key(struct
>       wiphy *wiphy, struct net_device *dev,
>       >          struct wlandevice *wlandev = dev->ml_priv;
>       >
>       >          int err = 0;
>       > -        int result = 0;
>       > +        int result;
>       >
>       >          result = prism2_domibset_uint32(wlandev,
>       >
>                        DIDmib_dot11smt_dot11PrivacyTable_dot11WEPDefaultKeyID,
>       > diff --git a/drivers/staging/xgifb/XGI_main_26.c
>       b/drivers/staging/xgifb/XGI_main_26.c
>       > index 777cd6e..c6d2941 100644
>       > --- a/drivers/staging/xgifb/XGI_main_26.c
>       > +++ b/drivers/staging/xgifb/XGI_main_26.c
>       > @@ -640,7 +640,7 @@ static void XGIfb_bpp_to_var(struct
>       xgifb_video_info *xgifb_info,
>       >
>       >  static void XGIfb_pre_setmode(struct xgifb_video_info
>       *xgifb_info)
>       >  {
>       > -        u8 cr30 = 0, cr31 = 0;
>       > +        u8 cr30 = 0, cr31;
>       >
>       >          cr31 = xgifb_reg_get(XGICR, 0x31);
>       >          cr31 &= ~0x60;
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170221170356.GA12793%4
>       0singhal-Inspiron-5558.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/b2c93b5d-3df1-4b04-b636-
> 1235af0a7006%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-861371932-1487699930=:3448--

