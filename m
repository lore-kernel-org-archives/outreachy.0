X-GM-THRID: 6389607922927665152
Date: Tue, 21 Feb 2017 10:03:42 -0800 (PST)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: singhalsimran0@gmail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-Id: <5deeb3b5-bb32-4067-8b51-c3d851b6e438@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702211855040.3448@hadrien>
References: <20170221170356.GA12793@singhal-Inspiron-5558> <alpine.DEB.2.20.1702211836430.3448@hadrien> <b2c93b5d-3df1-4b04-b636-1235af0a7006@googlegroups.com>
 <alpine.DEB.2.20.1702211855040.3448@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 4/6] staging: Drop useless
 initialisation
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2792_1721956798.1487700222467"
X-Google-Token: EP6BssUFm20Lj5I1Gyg0
X-Google-IP: 14.139.82.6

------=_Part_2792_1721956798.1487700222467
Content-Type: multipart/alternative; 
	boundary="----=_Part_2793_1319944304.1487700222469"

------=_Part_2793_1319944304.1487700222469
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Tuesday, February 21, 2017 at 11:28:59 PM UTC+5:30, Julia Lawall wrote:
>
> >       Also, note that the above semantic patch is not completely safe, 
> >       because 
> >       the code could be, eg: 
> > 
> >       int a = 0; 
> >       a = a + 1; 
> > 
> >       In that case, the initialization of a would be needed.  You 
> >       should check 
> >       each case for this issue. 
> > 
> > 
> > I have checked that case before sending the patch by diff . 
>
> OK, good :) 
>
> > Should I cut this patch as a totally different patch series and do I 
> have  
> > to mention v2. 
> > 
> >  If I have to mention v2 then how will I relate that new patch series 
> with 
> > this  
> > particular patch. 
>
> It's true that the subject lines will be completely different.  Maybe just 
> respond to your previous patch and say to ignore it, and then start over 
> with these patches, with one patch per driver. 
>
> julia 
>
>
> > Thanks, 
> > Simran 
> >   
> > 
> >       julia 
> > 
> >       > Signed-off-by: simran singhal <singhal...@gmail.com> 
> >       > --- 
> >       >  drivers/staging/android/ion/ion_heap.c              | 2 +- 
> >       >  drivers/staging/gdm724x/gdm_lte.c                   | 2 +- 
> >       >  drivers/staging/gdm724x/gdm_mux.c                   | 4 ++-- 
> >       >  drivers/staging/iio/addac/adt7316-i2c.c             | 2 +- 
> >       >  drivers/staging/lustre/lustre/ldlm/ldlm_request.c   | 2 +- 
> >       >  drivers/staging/lustre/lustre/obdclass/cl_page.c    | 2 +- 
> >       >  drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c | 2 +- 
> >       >  drivers/staging/media/s5p-cec/s5p_cec.c             | 2 +- 
> >       >  drivers/staging/rtl8188eu/core/rtw_ap.c             | 4 ++-- 
> >       >  drivers/staging/rtl8188eu/core/rtw_efuse.c          | 2 +- 
> >       >  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c       | 2 +- 
> >       >  drivers/staging/rtl8188eu/core/rtw_recv.c           | 4 ++-- 
> >       >  drivers/staging/rtl8188eu/core/rtw_sreset.c         | 2 +- 
> >       >  drivers/staging/rtl8188eu/core/rtw_wlan_util.c      | 2 +- 
> >       >  drivers/staging/rtl8188eu/core/rtw_xmit.c           | 2 +- 
> >       >  drivers/staging/rtl8188eu/hal/hal_intf.c            | 2 +- 
> >       >  drivers/staging/rtl8188eu/os_dep/ioctl_linux.c      | 2 +- 
> >       >  drivers/staging/rtl8188eu/os_dep/xmit_linux.c       | 2 +- 
> >       >  drivers/staging/rtl8712/rtl8712_xmit.c              | 2 +- 
> >       >  drivers/staging/rtl8712/rtl871x_mp.c                | 6 
> >       +++--- 
> >       >  drivers/staging/rts5208/rtsx_chip.c                 | 2 +- 
> >       >  drivers/staging/rts5208/sd.c                        | 4 ++-- 
> >       >  drivers/staging/sm750fb/ddk750_chip.c               | 2 +- 
> >       >  drivers/staging/sm750fb/ddk750_power.c              | 2 +- 
> >       >  drivers/staging/speakup/speakup_ltlk.c              | 2 +- 
> >       >  drivers/staging/unisys/visorbus/visorchipset.c      | 4 ++-- 
> >       >  drivers/staging/wlan-ng/cfg80211.c                  | 2 +- 
> >       >  drivers/staging/xgifb/XGI_main_26.c                 | 2 +- 
> >       >  28 files changed, 35 insertions(+), 35 deletions(-) 
> >       > 
> >       > diff --git a/drivers/staging/android/ion/ion_heap.c 
> >       b/drivers/staging/android/ion/ion_heap.c 
> >       > index 4e5c0f1..4bd844b 100644 
> >       > --- a/drivers/staging/android/ion/ion_heap.c 
> >       > +++ b/drivers/staging/android/ion/ion_heap.c 
> >       > @@ -270,7 +270,7 @@ static unsigned long 
> >       ion_heap_shrink_count(struct shrinker *shrinker, 
> >       >  { 
> >       >          struct ion_heap *heap = container_of(shrinker, struct 
> >       ion_heap, 
> >       >                                               shrinker); 
> >       > -        int total = 0; 
> >       > +        int total; 
> >       > 
> >       >          total = ion_heap_freelist_size(heap) / PAGE_SIZE; 
> >       >          if (heap->ops->shrink) 
> >       > diff --git a/drivers/staging/gdm724x/gdm_lte.c 
> >       b/drivers/staging/gdm724x/gdm_lte.c 
> >       > index a182757..e0f0912 100644 
> >       > --- a/drivers/staging/gdm724x/gdm_lte.c 
> >       > +++ b/drivers/staging/gdm724x/gdm_lte.c 
> >       > @@ -353,7 +353,7 @@ static s32 gdm_lte_tx_nic_type(struct 
> >       net_device *dev, struct sk_buff *skb) 
> >       >          struct ipv6hdr *ipv6; 
> >       >          int mac_proto; 
> >       >          void *network_data; 
> >       > -        u32 nic_type = 0; 
> >       > +        u32 nic_type; 
> >       > 
> >       >          /* NIC TYPE is based on the nic_id of this net_device 
> >       */ 
> >       >          nic_type = 0x00000010 | nic->nic_id; 
> >       > diff --git a/drivers/staging/gdm724x/gdm_mux.c 
> >       b/drivers/staging/gdm724x/gdm_mux.c 
> >       > index 4009691..aba32e2 100644 
> >       > --- a/drivers/staging/gdm724x/gdm_mux.c 
> >       > +++ b/drivers/staging/gdm724x/gdm_mux.c 
> >       > @@ -62,7 +62,7 @@ static int packet_type_to_index(u16 
> >       packetType) 
> >       > 
> >       >  static struct mux_tx *alloc_mux_tx(int len) 
> >       >  { 
> >       > -        struct mux_tx *t = NULL; 
> >       > +        struct mux_tx *t; 
> >       > 
> >       >          t = kzalloc(sizeof(*t), GFP_ATOMIC); 
> >       >          if (!t) 
> >       > @@ -91,7 +91,7 @@ static void free_mux_tx(struct mux_tx *t) 
> >       > 
> >       >  static struct mux_rx *alloc_mux_rx(void) 
> >       >  { 
> >       > -        struct mux_rx *r = NULL; 
> >       > +        struct mux_rx *r; 
> >       > 
> >       >          r = kzalloc(sizeof(*r), GFP_KERNEL); 
> >       >          if (!r) 
> >       > diff --git a/drivers/staging/iio/addac/adt7316-i2c.c 
> >       b/drivers/staging/iio/addac/adt7316-i2c.c 
> >       > index f66dd3e..af56dba 100644 
> >       > --- a/drivers/staging/iio/addac/adt7316-i2c.c 
> >       > +++ b/drivers/staging/iio/addac/adt7316-i2c.c 
> >       > @@ -41,7 +41,7 @@ static int adt7316_i2c_read(void *client, u8 
> >       reg, u8 *data) 
> >       >  static int adt7316_i2c_write(void *client, u8 reg, u8 data) 
> >       >  { 
> >       >          struct i2c_client *cl = client; 
> >       > -        int ret = 0; 
> >       > +        int ret; 
> >       > 
> >       >          ret = i2c_smbus_write_byte_data(cl, reg, data); 
> >       >          if (ret < 0) 
> >       > diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c 
> >       b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c 
> >       > index c1f8693..9c1b1be 100644 
> >       > --- a/drivers/staging/lustre/lustre/ldlm/ldlm_request.c 
> >       > +++ b/drivers/staging/lustre/lustre/ldlm/ldlm_request.c 
> >       > @@ -377,7 +377,7 @@ int ldlm_cli_enqueue_fini(struct 
> >       obd_export *exp, struct ptlrpc_request *req, 
> >       >          } 
> >       > 
> >       >          if (lvb_len > 0) { 
> >       > -                int size = 0; 
> >       > +                int size; 
> >       > 
> >       >                  size = req_capsule_get_size(&req->rq_pill, 
> >       &RMF_DLM_LVB, 
> >       >                                              RCL_SERVER); 
> >       > diff --git a/drivers/staging/lustre/lustre/obdclass/cl_page.c 
> >       b/drivers/staging/lustre/lustre/obdclass/cl_page.c 
> >       > index cd9a40c..fdaebc3 100644 
> >       > --- a/drivers/staging/lustre/lustre/obdclass/cl_page.c 
> >       > +++ b/drivers/staging/lustre/lustre/obdclass/cl_page.c 
> >       > @@ -1002,7 +1002,7 @@ EXPORT_SYMBOL(cl_page_slice_add); 
> >       >   */ 
> >       >  struct cl_client_cache *cl_cache_init(unsigned long 
> >       lru_page_max) 
> >       >  { 
> >       > -        struct cl_client_cache        *cache = NULL; 
> >       > +        struct cl_client_cache        *cache; 
> >       > 
> >       >          cache = kzalloc(sizeof(*cache), GFP_KERNEL); 
> >       >          if (!cache) 
> >       > diff --git 
> >       a/drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c 
> >       b/drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c 
> >       > index ce95e0f..8e7e43d 100644 
> >       > --- a/drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c 
> >       > +++ b/drivers/staging/media/s5p-cec/exynos_hdmi_cecctrl.c 
> >       > @@ -171,7 +171,7 @@ void s5p_cec_set_addr(struct s5p_cec_dev 
> >       *cec, u32 addr) 
> >       > 
> >       >  u32 s5p_cec_get_status(struct s5p_cec_dev *cec) 
> >       >  { 
> >       > -        u32 status = 0; 
> >       > +        u32 status; 
> >       > 
> >       >          status = readb(cec->reg + S5P_CEC_STATUS_0); 
> >       >          status |= readb(cec->reg + S5P_CEC_STATUS_1) << 8; 
> >       > diff --git a/drivers/staging/media/s5p-cec/s5p_cec.c 
> >       b/drivers/staging/media/s5p-cec/s5p_cec.c 
> >       > index 2a07968..7ec3770 100644 
> >       > --- a/drivers/staging/media/s5p-cec/s5p_cec.c 
> >       > +++ b/drivers/staging/media/s5p-cec/s5p_cec.c 
> >       > @@ -83,7 +83,7 @@ static int s5p_cec_adap_transmit(struct 
> >       cec_adapter *adap, u8 attempts, 
> >       >  static irqreturn_t s5p_cec_irq_handler(int irq, void *priv) 
> >       >  { 
> >       >          struct s5p_cec_dev *cec = priv; 
> >       > -        u32 status = 0; 
> >       > +        u32 status; 
> >       > 
> >       >          status = s5p_cec_get_status(cec); 
> >       > 
> >       > diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c 
> >       b/drivers/staging/rtl8188eu/core/rtw_ap.c 
> >       > index 1c8fa3a..cbacbe9 100644 
> >       > --- a/drivers/staging/rtl8188eu/core/rtw_ap.c 
> >       > +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c 
> >       > @@ -508,7 +508,7 @@ void add_RATid(struct adapter *padapter, 
> >       struct sta_info *psta, u8 rssi_level) 
> >       >          init_rate = get_highest_rate_idx(tx_ra_bitmap & 
> >       0x0fffffff) & 0x3f; 
> >       > 
> >       >          if (psta->aid < NUM_STA) { 
> >       > -                u8 arg = 0; 
> >       > +                u8 arg; 
> >       > 
> >       >                  arg = psta->mac_id & 0x1f; 
> >       > 
> >       > @@ -591,7 +591,7 @@ static void update_bmc_sta(struct adapter 
> >       *padapter) 
> >       >                  rtw_hal_set_odm_var(padapter, 
> >       HAL_ODM_STA_INFO, psta, true); 
> >       > 
> >       >                  { 
> >       > -                        u8 arg = 0; 
> >       > +                        u8 arg; 
> >       > 
> >       >                          arg = psta->mac_id&0x1f; 
> >       >                          arg |= BIT(7); 
> >       > diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c 
> >       b/drivers/staging/rtl8188eu/core/rtw_efuse.c 
> >       > index b9bdff0..98b3bd7 100644 
> >       > --- a/drivers/staging/rtl8188eu/core/rtw_efuse.c 
> >       > +++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c 
> >       > @@ -747,7 +747,7 @@ static bool 
> >       hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8 
> >       efuseType, u 
> >       >                                  /*  Here to write partial 
> >       data */ 
> >       >                                  badworden = 
> >       Efuse_WordEnableDataWrite(pAdapter, startAddr+1, matched_wden, 
> >       pTargetPkt->data); 
> >       >                                  if (badworden != 0x0F) { 
> >       > 
> >       -                                        u32        PgWriteSuccess 
> >       = 0; 
> >       > 
> >       
> +                                        u32        PgWriteSuccess; 
> >       >                                          /*  if write fail on 
> >       some words, write these bad words again */ 
> >       > 
> >       >                                          PgWriteSuccess = 
> >       Efuse_PgPacketWrite(pAdapter, pTargetPkt->offset, badworden, 
> >       pTargetPkt->data); 
> >       > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c 
> >       b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c 
> >       > index 2933479..118286c 100644 
> >       > --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c 
> >       > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c 
> >       > @@ -296,7 +296,7 @@ static int update_hidden_ssid(u8 *ies, u32 
> >       ies_len, u8 hidden_ssid_mode) 
> >       >                  switch (hidden_ssid_mode) { 
> >       >                  case 1: { 
> >       >                          u8 *next_ie = ssid_ie + 2 + 
> >       ssid_len_ori; 
> >       > -                        u32 remain_len = 0; 
> >       > +                        u32 remain_len; 
> >       > 
> >       >                          remain_len = ies_len - (next_ie - 
> >       ies); 
> >       > 
> >       > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c 
> >       b/drivers/staging/rtl8188eu/core/rtw_recv.c 
> >       > index 1bc7b97..e6d4553 100644 
> >       > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c 
> >       > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c 
> >       > @@ -535,7 +535,7 @@ static void process_pwrbit_data(struct 
> >       adapter *padapter, 
> >       >          u8 *ptr = precv_frame->rx_data; 
> >       >          struct rx_pkt_attrib *pattrib = &precv_frame->attrib; 
> >       >          struct sta_priv *pstapriv = &padapter->stapriv; 
> >       > -        struct sta_info *psta = NULL; 
> >       > +        struct sta_info *psta; 
> >       > 
> >       >          psta = rtw_get_stainfo(pstapriv, pattrib->src); 
> >       > 
> >       > @@ -560,7 +560,7 @@ static void process_wmmps_data(struct 
> >       adapter *padapter, 
> >       >  #ifdef CONFIG_88EU_AP_MODE 
> >       >          struct rx_pkt_attrib *pattrib = &precv_frame->attrib; 
> >       >          struct sta_priv *pstapriv = &padapter->stapriv; 
> >       > -        struct sta_info *psta = NULL; 
> >       > +        struct sta_info *psta; 
> >       > 
> >       >          psta = rtw_get_stainfo(pstapriv, pattrib->src); 
> >       > 
> >       > diff --git a/drivers/staging/rtl8188eu/core/rtw_sreset.c 
> >       b/drivers/staging/rtl8188eu/core/rtw_sreset.c 
> >       > index a198c57..7cda913 100644 
> >       > --- a/drivers/staging/rtl8188eu/core/rtw_sreset.c 
> >       > +++ b/drivers/staging/rtl8188eu/core/rtw_sreset.c 
> >       > @@ -28,7 +28,7 @@ u8 sreset_get_wifi_status(struct adapter 
> >       *padapter) 
> >       >          struct sreset_priv *psrtpriv = 
> >       &padapter->HalData->srestpriv; 
> >       > 
> >       >          u8 status = WIFI_STATUS_SUCCESS; 
> >       > -        u32 val32 = 0; 
> >       > +        u32 val32; 
> >       > 
> >       >          val32 = usb_read32(padapter, REG_TXDMA_STATUS); 
> >       >          if (val32 == 0xeaeaeaea) { 
> >       > diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> >       b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> >       > index f6f1b09..a168cc0 100644 
> >       > --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> >       > +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c 
> >       > @@ -1245,7 +1245,7 @@ unsigned int 
> >       update_supported_rate(unsigned char *ptn, unsigned int ptn_sz) 
> >       > 
> >       >  unsigned int update_MSC_rate(struct ieee80211_ht_cap 
> >       *pHT_caps) 
> >       >  { 
> >       > -        unsigned int mask = 0; 
> >       > +        unsigned int mask; 
> >       > 
> >       >          mask = (pHT_caps->mcs.rx_mask[0] << 12) | 
> >       >                 (pHT_caps->mcs.rx_mask[1] << 20); 
> >       > diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c 
> >       b/drivers/staging/rtl8188eu/core/rtw_xmit.c 
> >       > index 484d20a..d89bc34 100644 
> >       > --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c 
> >       > +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c 
> >       > @@ -928,7 +928,7 @@ s32 rtw_txframes_sta_ac_pending(struct 
> >       adapter *padapter, struct pkt_attrib *pat 
> >       >   */ 
> >       >  u32 rtw_calculate_wlan_pkt_size_by_attribue(struct pkt_attrib 
> >       *pattrib) 
> >       >  { 
> >       > -        u32        len = 0; 
> >       > +        u32        len; 
> >       > 
> >       >          len = pattrib->hdrlen + pattrib->iv_len; /*  WLAN 
> >       Header and IV */ 
> >       >          len += SNAP_SIZE + sizeof(u16); /*  LLC */ 
> >       > diff --git a/drivers/staging/rtl8188eu/hal/hal_intf.c 
> >       b/drivers/staging/rtl8188eu/hal/hal_intf.c 
> >       > index a11c7b4..e723fb5 100644 
> >       > --- a/drivers/staging/rtl8188eu/hal/hal_intf.c 
> >       > +++ b/drivers/staging/rtl8188eu/hal/hal_intf.c 
> >       > @@ -44,7 +44,7 @@ uint         rtw_hal_init(struct adapter 
> >       *adapt) 
> >       > 
> >       >  uint rtw_hal_deinit(struct adapter *adapt) 
> >       >  { 
> >       > -        uint        status = _SUCCESS; 
> >       > +        uint        status; 
> >       > 
> >       >          status = rtl8188eu_hal_deinit(adapt); 
> >       > 
> >       > diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c 
> >       b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c 
> >       > index 763eccd..e7fe8aa 100644 
> >       > --- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c 
> >       > +++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c 
> >       > @@ -1496,7 +1496,7 @@ static int rtw_wx_get_rate(struct 
> >       net_device *dev, 
> >       >                               struct iw_request_info *info, 
> >       >                               union iwreq_data *wrqu, char 
> >       *extra) 
> >       >  { 
> >       > -        u16 max_rate = 0; 
> >       > +        u16 max_rate; 
> >       > 
> >       >          max_rate = rtw_get_cur_max_rate((struct adapter 
> >       *)rtw_netdev_priv(dev)); 
> >       > 
> >       > diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c 
> >       b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c 
> >       > index e097c61..2e06cdb 100644 
> >       > --- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c 
> >       > +++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c 
> >       > @@ -43,7 +43,7 @@ void _rtw_open_pktfile(struct sk_buff 
> >       *pktptr, struct pkt_file *pfile) 
> >       > 
> >       >  uint _rtw_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint 
> >       rlen) 
> >       >  { 
> >       > -        uint        len = 0; 
> >       > +        uint        len; 
> >       > 
> >       > 
> >       >          len =  rtw_remainder_len(pfile); 
> >       > diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c 
> >       b/drivers/staging/rtl8712/rtl8712_xmit.c 
> >       > index c4f03a6..7167d76 100644 
> >       > --- a/drivers/staging/rtl8712/rtl8712_xmit.c 
> >       > +++ b/drivers/staging/rtl8712/rtl8712_xmit.c 
> >       > @@ -750,7 +750,7 @@ static void dump_xframe(struct _adapter 
> >       *padapter, 
> >       > 
> >       >  int r8712_xmit_direct(struct _adapter *padapter, struct 
> >       xmit_frame *pxmitframe) 
> >       >  { 
> >       > -        int res = _SUCCESS; 
> >       > +        int res; 
> >       > 
> >       >          res = r8712_xmitframe_coalesce(padapter, 
> >       pxmitframe->pkt, pxmitframe); 
> >       >          pxmitframe->pkt = NULL; 
> >       > diff --git a/drivers/staging/rtl8712/rtl871x_mp.c 
> >       b/drivers/staging/rtl8712/rtl871x_mp.c 
> >       > index 3c10a2c..ccc4358 100644 
> >       > --- a/drivers/staging/rtl8712/rtl871x_mp.c 
> >       > +++ b/drivers/staging/rtl8712/rtl871x_mp.c 
> >       > @@ -295,7 +295,7 @@ void r8712_SetChannel(struct _adapter 
> >       *pAdapter) 
> >       > 
> >       >  static void SetCCKTxPower(struct _adapter *pAdapter, u8 
> >       TxPower) 
> >       >  { 
> >       > -        u16 TxAGC = 0; 
> >       > +        u16 TxAGC; 
> >       > 
> >       >          TxAGC = TxPower; 
> >       >          set_bb_reg(pAdapter, rTxAGC_CCK_Mcs32, bTxAGCRateCCK, 
> >       TxAGC); 
> >       > @@ -722,7 +722,7 @@ static u32 GetPhyRxPktCounts(struct 
> >       _adapter *pAdapter, u32 selbit) 
> >       > 
> >       >  u32 r8712_GetPhyRxPktReceived(struct _adapter *pAdapter) 
> >       >  { 
> >       > -        u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0; 
> >       > +        u32 OFDM_cnt, CCK_cnt = 0, HT_cnt = 0; 
> >       > 
> >       >          OFDM_cnt = GetPhyRxPktCounts(pAdapter, 
> >       OFDM_MPDU_OK_BIT); 
> >       >          CCK_cnt = GetPhyRxPktCounts(pAdapter, 
> >       CCK_MPDU_OK_BIT); 
> >       > @@ -732,7 +732,7 @@ u32 r8712_GetPhyRxPktReceived(struct 
> >       _adapter *pAdapter) 
> >       > 
> >       >  u32 r8712_GetPhyRxPktCRC32Error(struct _adapter *pAdapter) 
> >       >  { 
> >       > -        u32 OFDM_cnt = 0, CCK_cnt = 0, HT_cnt = 0; 
> >       > +        u32 OFDM_cnt, CCK_cnt = 0, HT_cnt = 0; 
> >       > 
> >       >          OFDM_cnt = GetPhyRxPktCounts(pAdapter, 
> >       OFDM_MPDU_FAIL_BIT); 
> >       >          CCK_cnt = GetPhyRxPktCounts(pAdapter, 
> >       CCK_MPDU_FAIL_BIT); 
> >       > diff --git a/drivers/staging/rts5208/rtsx_chip.c 
> >       b/drivers/staging/rts5208/rtsx_chip.c 
> >       > index 3511157..5ec9d34 100644 
> >       > --- a/drivers/staging/rts5208/rtsx_chip.c 
> >       > +++ b/drivers/staging/rts5208/rtsx_chip.c 
> >       > @@ -2086,7 +2086,7 @@ int rtsx_pre_handle_interrupt(struct 
> >       rtsx_chip *chip) 
> >       >          u32 status, int_enable; 
> >       >          bool exit_ss = false; 
> >       >  #ifdef SUPPORT_OCP 
> >       > -        u32 ocp_int = 0; 
> >       > +        u32 ocp_int; 
> >       > 
> >       >          ocp_int = OC_INT; 
> >       >  #endif 
> >       > diff --git a/drivers/staging/rts5208/sd.c 
> >       b/drivers/staging/rts5208/sd.c 
> >       > index bdd35b6..53db0cb 100644 
> >       > --- a/drivers/staging/rts5208/sd.c 
> >       > +++ b/drivers/staging/rts5208/sd.c 
> >       > @@ -514,7 +514,7 @@ static int sd_check_csd(struct rtsx_chip 
> >       *chip, char check_wp) 
> >       >                                          (1 << (c_size_mult + 
> >       2))) 
> >       >                                  << (blk_size - 9); 
> >       >                  } else { 
> >       > -                        u32 total_sector = 0; 
> >       > +                        u32 total_sector; 
> >       > 
> >       >                          total_sector = (((u32)rsp[8] & 0x3f) 
> >       << 16) | 
> >       >                                  ((u32)rsp[9] << 8) | 
> >       (u32)rsp[10]; 
> >       > @@ -617,7 +617,7 @@ static void sd_choose_proper_clock(struct 
> >       rtsx_chip *chip) 
> >       >  static int sd_set_clock_divider(struct rtsx_chip *chip, u8 
> >       clk_div) 
> >       >  { 
> >       >          int retval; 
> >       > -        u8 mask = 0, val = 0; 
> >       > +        u8 mask, val = 0; 
> >       > 
> >       >          mask = 0x60; 
> >       >          if (clk_div == SD_CLK_DIVIDE_0) 
> >       > diff --git a/drivers/staging/sm750fb/ddk750_chip.c 
> >       b/drivers/staging/sm750fb/ddk750_chip.c 
> >       > index 9aaf1fd..b2fbcfac 100644 
> >       > --- a/drivers/staging/sm750fb/ddk750_chip.c 
> >       > +++ b/drivers/staging/sm750fb/ddk750_chip.c 
> >       > @@ -389,7 +389,7 @@ unsigned int sm750_format_pll_reg(struct 
> >       pll_value *pPLL) 
> >       >          unsigned int OD = pPLL->OD; 
> >       >          unsigned int M = pPLL->M; 
> >       >          unsigned int N = pPLL->N; 
> >       > -        unsigned int reg = 0; 
> >       > +        unsigned int reg; 
> >       > 
> >       >          /* 
> >       >           * Note that all PLL's have the same format. Here, we 
> >       just use 
> >       > diff --git a/drivers/staging/sm750fb/ddk750_power.c 
> >       b/drivers/staging/sm750fb/ddk750_power.c 
> >       > index 6167e30..baf80c0 100644 
> >       > --- a/drivers/staging/sm750fb/ddk750_power.c 
> >       > +++ b/drivers/staging/sm750fb/ddk750_power.c 
> >       > @@ -31,7 +31,7 @@ static unsigned int get_power_mode(void) 
> >       >   */ 
> >       >  void sm750_set_power_mode(unsigned int mode) 
> >       >  { 
> >       > -        unsigned int ctrl = 0; 
> >       > +        unsigned int ctrl; 
> >       > 
> >       >          ctrl = PEEK32(POWER_MODE_CTRL) & 
> >       ~POWER_MODE_CTRL_MODE_MASK; 
> >       > 
> >       > diff --git a/drivers/staging/speakup/speakup_ltlk.c 
> >       b/drivers/staging/speakup/speakup_ltlk.c 
> >       > index b474e8b..4f7fb35 100644 
> >       > --- a/drivers/staging/speakup/speakup_ltlk.c 
> >       > +++ b/drivers/staging/speakup/speakup_ltlk.c 
> >       > @@ -156,7 +156,7 @@ static void synth_interrogate(struct 
> >       spk_synth *synth) 
> >       > 
> >       >  static int synth_probe(struct spk_synth *synth) 
> >       >  { 
> >       > -        int failed = 0; 
> >       > +        int failed; 
> >       > 
> >       >          failed = spk_serial_synth_probe(synth); 
> >       >          if (failed == 0) 
> >       > diff --git a/drivers/staging/unisys/visorbus/visorchipset.c 
> >       b/drivers/staging/unisys/visorbus/visorchipset.c 
> >       > index 336af52..576e7a9 100644 
> >       > --- a/drivers/staging/unisys/visorbus/visorchipset.c 
> >       > +++ b/drivers/staging/unisys/visorbus/visorchipset.c 
> >       > @@ -350,7 +350,7 @@ static DEVICE_ATTR_RW(remaining_steps); 
> >       >  static uuid_le 
> >       >  parser_id_get(struct parser_context *ctx) 
> >       >  { 
> >       > -        struct spar_controlvm_parameters_header *phdr = NULL; 
> >       > +        struct spar_controlvm_parameters_header *phdr; 
> >       > 
> >       >          phdr = (struct spar_controlvm_parameters_header 
> >       *)(ctx->data); 
> >       >          return phdr->id; 
> >       > @@ -396,7 +396,7 @@ parser_string_get(struct parser_context 
> >       *ctx) 
> >       >  static void * 
> >       >  parser_name_get(struct parser_context *ctx) 
> >       >  { 
> >       > -        struct spar_controlvm_parameters_header *phdr = NULL; 
> >       > +        struct spar_controlvm_parameters_header *phdr; 
> >       > 
> >       >          phdr = (struct spar_controlvm_parameters_header 
> >       *)(ctx->data); 
> >       >          ctx->curr = ctx->data + phdr->name_offset; 
> >       > diff --git a/drivers/staging/wlan-ng/cfg80211.c 
> >       b/drivers/staging/wlan-ng/cfg80211.c 
> >       > index aa0e5a3..b24d9bf 100644 
> >       > --- a/drivers/staging/wlan-ng/cfg80211.c 
> >       > +++ b/drivers/staging/wlan-ng/cfg80211.c 
> >       > @@ -244,7 +244,7 @@ static int prism2_set_default_key(struct 
> >       wiphy *wiphy, struct net_device *dev, 
> >       >          struct wlandevice *wlandev = dev->ml_priv; 
> >       > 
> >       >          int err = 0; 
> >       > -        int result = 0; 
> >       > +        int result; 
> >       > 
> >       >          result = prism2_domibset_uint32(wlandev, 
> >       > 
> >       
>                  DIDmib_dot11smt_dot11PrivacyTable_dot11WEPDefaultKeyID, 
> >       > diff --git a/drivers/staging/xgifb/XGI_main_26.c 
> >       b/drivers/staging/xgifb/XGI_main_26.c 
> >       > index 777cd6e..c6d2941 100644 
> >       > --- a/drivers/staging/xgifb/XGI_main_26.c 
> >       > +++ b/drivers/staging/xgifb/XGI_main_26.c 
> >       > @@ -640,7 +640,7 @@ static void XGIfb_bpp_to_var(struct 
> >       xgifb_video_info *xgifb_info, 
> >       > 
> >       >  static void XGIfb_pre_setmode(struct xgifb_video_info 
> >       *xgifb_info) 
> >       >  { 
> >       > -        u8 cr30 = 0, cr31 = 0; 
> >       > +        u8 cr30 = 0, cr31; 
> >       > 
> >       >          cr31 = xgifb_reg_get(XGICR, 0x31); 
> >       >          cr31 &= ~0x60; 
> >       > -- 
> >       > 2.7.4 
> >       > 
> >       > -- 
> >       > You received this message because you are subscribed to the 
> >       Google Groups "outreachy-kernel" group. 
> >       > To unsubscribe from this group and stop receiving emails from 
> >       it, send an email to outreachy-kern...@googlegroups.com. 
> >       > To post to this group, send email to 
> >       outreach...@googlegroups.com. 
> >       > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/20170221170356.GA12793%4 
> >       0singhal-Inspiron-5558. 
> >       > For more options, visit https://groups.google.com/d/optout. 
> >       > 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/b2c93b5d-3df1-4b04-b636- 
> > 1235af0a7006%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> >

Please Ignore this patch 

------=_Part_2793_1319944304.1487700222469
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Tuesday, February 21, 2017 at 11:28:59 PM UTC+5=
:30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; =
=C2=A0 =C2=A0 =C2=A0 Also, note that the above semantic patch is not comple=
tely safe,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 because
<br>&gt; =C2=A0 =C2=A0 =C2=A0 the code could be, eg:
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 int a =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 a =3D a + 1;
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 In that case, the initialization of a would b=
e needed. =C2=A0You
<br>&gt; =C2=A0 =C2=A0 =C2=A0 should check
<br>&gt; =C2=A0 =C2=A0 =C2=A0 each case for this issue.
<br>&gt;
<br>&gt;
<br>&gt; I have checked that case before sending the patch by diff .
<br>
<br>OK, good :)
<br>
<br>&gt; Should I cut this patch as a totally different patch series and do=
 I have=C2=A0
<br>&gt; to mention v2.
<br>&gt;
<br>&gt; =C2=A0If I have to mention v2 then how will I relate that new patc=
h series with
<br>&gt; this=C2=A0
<br>&gt; particular patch.
<br>
<br>It&#39;s true that the subject lines will be completely different. =C2=
=A0Maybe just
<br>respond to your previous patch and say to ignore it, and then start ove=
r
<br>with these patches, with one patch per driver.
<br>
<br>julia
<br>
<br>
<br>&gt; Thanks,
<br>&gt; Simran
<br>&gt; =C2=A0
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 julia
<br>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; Signed-off-by: simran singhal &lt;<a>sin=
ghal...@gmail.com</a>&gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; ---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/android/ion/<wbr>i=
on_heap.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/gdm724x/gdm_<wbr>l=
te.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/gdm724x/gdm_<wbr>m=
ux.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++-=
-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/iio/addac/<wbr>adt=
7316-i2c.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/lustre/<wbr>lustre=
/ldlm/ldlm_request.c =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/lustre/<wbr>lustre=
/obdclass/cl_page.c =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/media/s5p-<wbr>cec=
/exynos_hdmi_cecctrl.c | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/media/s5p-<wbr>cec=
/s5p_cec.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_ap.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++--
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_efuse.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_mlme_ext.c =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_recv.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++--
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_sreset.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_wlan_util.c =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_xmit.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/<wbr>hal=
/hal_intf.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/os_<wbr>=
dep/ioctl_linux.c =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8188eu/os_<wbr>=
dep/xmit_linux.c =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8712/<wbr>rtl87=
12_xmit.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rtl8712/<wbr>rtl87=
1x_mp.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 6
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +++---
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rts5208/rtsx_<wbr>=
chip.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/rts5208/sd.c =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| 4 ++--
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/sm750fb/<wbr>ddk75=
0_chip.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/sm750fb/<wbr>ddk75=
0_power.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/speakup/<wbr>speak=
up_ltlk.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/unisys/<wbr>visorb=
us/visorchipset.c =C2=A0 =C2=A0 =C2=A0| 4 ++--
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/wlan-ng/<wbr>cfg80=
211.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0drivers/staging/xgifb/XGI_<wbr>mai=
n_26.c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A028 files changed, 35 insertions(+)=
, 35 deletions(-)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/android/ion=
/<wbr>ion_heap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/android/ion/<wbr>ion_heap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 4e5c0f1..4bd844b 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/android/ion/<wbr>i=
on_heap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/android/ion/<wbr>i=
on_heap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -270,7 +270,7 @@ static unsigned long
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ion_heap_shrink_count(struct shrinker *shrink=
er,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct ion_heap *heap =3D container_of(shrinker, struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ion_heap,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 shrinker);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int total =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int total;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0total =3D ion_heap_freelist_size(heap) / PAGE_SIZE;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (heap-&gt;ops-&gt;shrink)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/gdm724x/gdm=
_<wbr>lte.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/gdm724x/gdm_<wbr>lte.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index a182757..e0f0912 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/gdm724x/gdm_<wbr>l=
te.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/gdm724x/gdm_<wbr>l=
te.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -353,7 +353,7 @@ static s32 gdm_lte_t=
x_nic_type(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 net_device *dev, struct sk_buff *skb)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct ipv6hdr *ipv6;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0int mac_proto;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0void *network_data;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 nic_type =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 nic_type;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0/* NIC TYPE is based on the nic_id of this net_device
<br>&gt; =C2=A0 =C2=A0 =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0nic_type =3D 0x00000010 | nic-&gt;nic_id;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/gdm724x/gdm=
_<wbr>mux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/gdm724x/gdm_<wbr>mux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 4009691..aba32e2 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/gdm724x/gdm_<wbr>m=
ux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/gdm724x/gdm_<wbr>m=
ux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -62,7 +62,7 @@ static int packet_type=
_to_index(u16
<br>&gt; =C2=A0 =C2=A0 =C2=A0 packetType)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static struct mux_tx *alloc_mux_tx=
(int len)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct mux_tx *t =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct mux_tx *t;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0t =3D kzalloc(sizeof(*t), GFP_ATOMIC);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (!t)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -91,7 +91,7 @@ static void free_mux_t=
x(struct mux_tx *t)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static struct mux_rx *alloc_mux_rx=
(void)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct mux_rx *r =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct mux_rx *r;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0r =3D kzalloc(sizeof(*r), GFP_KERNEL);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (!r)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/iio/addac/<=
wbr>adt7316-i2c.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/iio/addac/<wbr>adt7316-i2c.=
c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index f66dd3e..af56dba 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/iio/addac/<wbr>adt=
7316-i2c.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/iio/addac/<wbr>adt=
7316-i2c.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -41,7 +41,7 @@ static int adt7316_i2c=
_read(void *client, u8
<br>&gt; =C2=A0 =C2=A0 =C2=A0 reg, u8 *data)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static int adt7316_i2c_write(void =
*client, u8 reg, u8 data)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct i2c_client *cl =3D client;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int ret =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int ret;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0ret =3D i2c_smbus_write_byte_data(cl, reg, data);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (ret &lt; 0)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/lustre/<wbr=
>lustre/ldlm/ldlm_request.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/lustre/<wbr>lustre/ldlm/ldl=
m_request.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index c1f8693..9c1b1be 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/lustre/<wbr>lustre=
/ldlm/ldlm_request.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/lustre/<wbr>lustre=
/ldlm/ldlm_request.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -377,7 +377,7 @@ int ldlm_cli_enqueue=
_fini(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 obd_export *exp, struct ptlrpc_request *req,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (lvb_len &gt; 0) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int size =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int size;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0size =3D req=
_capsule_get_size(&amp;req-&gt;rq_<wbr>pill,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &amp;RMF_DLM_LVB,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0RCL_SERVER);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/lustre/<wbr=
>lustre/obdclass/cl_page.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/lustre/<wbr>lustre/obdclass=
/cl_page.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index cd9a40c..fdaebc3 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/lustre/<wbr>lustre=
/obdclass/cl_page.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/lustre/<wbr>lustre=
/obdclass/cl_page.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1002,7 +1002,7 @@ EXPORT_SYMBOL(cl_p=
age_slice_<wbr>add);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0struct cl_client_cache *cl_cache_i=
nit(unsigned long
<br>&gt; =C2=A0 =C2=A0 =C2=A0 lru_page_max)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct cl_client_cache=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0*cache =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct cl_client_cache=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0*cache;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0cache =3D kzalloc(sizeof(*cache), GFP_KERNEL);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (!cache)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git
<br>&gt; =C2=A0 =C2=A0 =C2=A0 a/drivers/staging/media/s5p-<wbr>cec/exynos_h=
dmi_cecctrl.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/media/s5p-<wbr>cec/exynos_h=
dmi_cecctrl.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index ce95e0f..8e7e43d 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/media/s5p-<wbr>cec=
/exynos_hdmi_cecctrl.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/media/s5p-<wbr>cec=
/exynos_hdmi_cecctrl.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -171,7 +171,7 @@ void s5p_cec_set_add=
r(struct s5p_cec_dev
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *cec, u32 addr)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0u32 s5p_cec_get_status(struct s5p_=
cec_dev *cec)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 status =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 status;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0status =3D readb(cec-&gt;reg + S5P_CEC_STATUS_0);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0status |=3D readb(cec-&gt;reg + S5P_CEC_STATUS_1) &lt;&lt; 8=
;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/media/s5p-<=
wbr>cec/s5p_cec.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/media/s5p-<wbr>cec/s5p_cec.=
c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 2a07968..7ec3770 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/media/s5p-<wbr>cec=
/s5p_cec.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/media/s5p-<wbr>cec=
/s5p_cec.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -83,7 +83,7 @@ static int s5p_cec_ada=
p_transmit(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 cec_adapter *adap, u8 attempts,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static irqreturn_t s5p_cec_irq_han=
dler(int irq, void *priv)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct s5p_cec_dev *cec =3D priv;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 status =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 status;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0status =3D s5p_cec_get_status(cec);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>core/rtw_ap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>core/rtw_ap.=
c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 1c8fa3a..cbacbe9 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_ap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_ap.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -508,7 +508,7 @@ void add_RATid(struc=
t adapter *padapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 struct sta_info *psta, u8 rssi_level)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0init_rate =3D get_highest_rate_idx(tx_ra_<wbr>bitmap &amp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0x0fffffff) &amp; 0x3f;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (psta-&gt;aid &lt; NUM_STA) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 arg =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 arg;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0arg =3D psta=
-&gt;mac_id &amp; 0x1f;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -591,7 +591,7 @@ static void update_b=
mc_sta(struct adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *padapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rtw_hal_set_=
<wbr>odm_var(padapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 HAL_ODM_STA_INFO, psta, true);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 arg =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 arg;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0arg =3D psta-&gt;mac_id&amp;0x1f;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0arg |=3D BIT(7);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>core/rtw_efuse.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>core/rtw_efu=
se.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index b9bdff0..98b3bd7 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_efuse.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_efuse.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -747,7 +747,7 @@ static bool
<br>&gt; =C2=A0 =C2=A0 =C2=A0 hal_EfusePartialWriteCheck(<wbr>struct adapte=
r *pAdapter, u8
<br>&gt; =C2=A0 =C2=A0 =C2=A0 efuseType, u
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0/* =C2=A0Here to write partial
<br>&gt; =C2=A0 =C2=A0 =C2=A0 data */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0badworden =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Efuse_WordEnableDataWrite(<wbr>pAdapter, star=
tAddr+1, matched_wden,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 pTargetPkt-&gt;data);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0if (badworden !=3D 0x0F) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>PgWriteSuccess
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>PgWriteSuccess;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* =C2=A0if =
write fail on
<br>&gt; =C2=A0 =C2=A0 =C2=A0 some words, write these bad words again */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0PgWriteSucce=
ss =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Efuse_PgPacketWrite(pAdapter, pTargetPkt-&gt;=
offset, badworden,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 pTargetPkt-&gt;data);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>core/rtw_mlme_ext.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>core/rtw_mlm=
e_ext.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 2933479..118286c 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_mlme_ext.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_mlme_ext.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -296,7 +296,7 @@ static int update_hi=
dden_ssid(u8 *ies, u32
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ies_len, u8 hidden_ssid_mode)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (hidd=
en_ssid_mode) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 1: {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 *next_ie =3D ssid_ie + 2 +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ssid_len_ori;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 remain_len =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 remain_len;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>remain_len =3D ies_len - (next_ie =
-
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ies);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>core/rtw_recv.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>core/rtw_rec=
v.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 1bc7b97..e6d4553 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_recv.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_recv.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -535,7 +535,7 @@ static void process_=
pwrbit_data(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 adapter *padapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0u8 *ptr =3D precv_frame-&gt;rx_data;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct rx_pkt_attrib *pattrib =3D &amp;precv_frame-&gt;attri=
b;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct sta_priv *pstapriv =3D &amp;padapter-&gt;stapriv;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct sta_info *psta =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct sta_info *psta;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0psta =3D rtw_get_stainfo(pstapriv, pattrib-&gt;src);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -560,7 +560,7 @@ static void process_=
wmmps_data(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 adapter *padapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#ifdef CONFIG_88EU_AP_MODE
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct rx_pkt_attrib *pattrib =3D &amp;precv_frame-&gt;attri=
b;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct sta_priv *pstapriv =3D &amp;padapter-&gt;stapriv;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct sta_info *psta =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct sta_info *psta;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0psta =3D rtw_get_stainfo(pstapriv, pattrib-&gt;src);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>core/rtw_sreset.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>core/rtw_sre=
set.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index a198c57..7cda913 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_sreset.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_sreset.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -28,7 +28,7 @@ u8 sreset_get_wifi_sta=
tus(struct adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *padapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct sreset_priv *psrtpriv =3D
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &amp;padapter-&gt;HalData-&gt;srestpriv;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0u8 status =3D WIFI_STATUS_SUCCESS;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 val32 =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 val32;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0val32 =3D usb_read32(padapter, REG_TXDMA_STATUS);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (val32 =3D=3D 0xeaeaeaea) {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>core/rtw_wlan_util.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>core/rtw_wla=
n_util.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index f6f1b09..a168cc0 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_wlan_util.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_wlan_util.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1245,7 +1245,7 @@ unsigned int
<br>&gt; =C2=A0 =C2=A0 =C2=A0 update_supported_rate(unsigned char *ptn, uns=
igned int ptn_sz)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0unsigned int update_MSC_rate(struc=
t ieee80211_ht_cap
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *pHT_caps)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0unsigned int mask =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0unsigned int mask;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0mask =3D (pHT_caps-&gt;mcs.rx_mask[0] &lt;&lt; 12) |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 (pHT_caps-&gt;mcs.rx_mask[1] &lt;&lt; =
20);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>core/rtw_xmit.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>core/rtw_xmi=
t.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 484d20a..d89bc34 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_xmit.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>cor=
e/rtw_xmit.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -928,7 +928,7 @@ s32 rtw_txframes_sta=
_ac_pending(<wbr>struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 adapter *padapter, struct pkt_attrib *pat
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0u32 rtw_calculate_wlan_pkt_size_<w=
br>by_attribue(struct pkt_attrib
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *pattrib)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0len =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0len;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0len =3D pattrib-&gt;hdrlen + pattrib-&gt;iv_len; /* =C2=A0WL=
AN
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Header and IV */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0len +=3D SNAP_SIZE + sizeof(u16); /* =C2=A0LLC */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>hal/hal_intf.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>hal/hal_intf=
.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index a11c7b4..e723fb5 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>hal=
/hal_intf.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>hal=
/hal_intf.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -44,7 +44,7 @@ uint=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rtw_hal_init(struct adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *adapt)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0uint rtw_hal_deinit(struct adapter=
 *adapt)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0uint=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status =3D _SU=
CCESS;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0uint=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0status;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0status =3D rtl8188eu_hal_deinit(adapt);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>os_dep/ioctl_linux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>os_dep/ioctl=
_linux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 763eccd..e7fe8aa 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>os_=
dep/ioctl_linux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>os_=
dep/ioctl_linux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -1496,7 +1496,7 @@ static int rtw_wx_=
get_rate(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 net_device *dev,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 struct iw_request_info *=
info,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 union iwreq_data *wrqu, =
char
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *extra)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u16 max_rate =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u16 max_rate;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0max_rate =3D rtw_get_cur_max_rate((struct adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *)rtw_netdev_priv(dev));
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8188eu/<=
wbr>os_dep/xmit_linux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8188eu/<wbr>os_dep/xmit_=
linux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index e097c61..2e06cdb 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8188eu/<wbr>os_=
dep/xmit_linux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8188eu/<wbr>os_=
dep/xmit_linux.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -43,7 +43,7 @@ void _rtw_open_pktfile=
(struct sk_buff
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *pktptr, struct pkt_file *pfile)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0uint _rtw_pktfile_read(struct pkt_=
file *pfile, u8 *rmem, uint
<br>&gt; =C2=A0 =C2=A0 =C2=A0 rlen)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0uint=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0len =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0uint=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0len;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0len =3D =C2=A0rtw_remainder_len(pfile);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8712/<wb=
r>rtl8712_xmit.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8712/<wbr>rtl8712_xmit.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index c4f03a6..7167d76 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8712/<wbr>rtl87=
12_xmit.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8712/<wbr>rtl87=
12_xmit.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -750,7 +750,7 @@ static void dump_xfr=
ame(struct _adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *padapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0int r8712_xmit_direct(struct _adap=
ter *padapter, struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 xmit_frame *pxmitframe)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int res =3D _SUCCESS;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int res;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0res =3D r8712_xmitframe_coalesce(<wbr>padapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 pxmitframe-&gt;pkt, pxmitframe);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0pxmitframe-&gt;pkt =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rtl8712/<wb=
r>rtl871x_mp.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rtl8712/<wbr>rtl871x_mp.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 3c10a2c..ccc4358 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rtl8712/<wbr>rtl87=
1x_mp.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rtl8712/<wbr>rtl87=
1x_mp.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -295,7 +295,7 @@ void r8712_SetChanne=
l(struct _adapter
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *pAdapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static void SetCCKTxPower(struct _=
adapter *pAdapter, u8
<br>&gt; =C2=A0 =C2=A0 =C2=A0 TxPower)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u16 TxAGC =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u16 TxAGC;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0TxAGC =3D TxPower;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0set_bb_reg(pAdapter, rTxAGC_CCK_Mcs32, bTxAGCRateCCK,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 TxAGC);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -722,7 +722,7 @@ static u32 GetPhyRxP=
ktCounts(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 _adapter *pAdapter, u32 selbit)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0u32 r8712_GetPhyRxPktReceived(<wbr=
>struct _adapter *pAdapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 OFDM_cnt =3D 0, CCK_cnt =3D 0, HT_cnt =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 OFDM_cnt, CCK_cnt =3D 0, HT_cnt =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0OFDM_cnt =3D GetPhyRxPktCounts(pAdapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 OFDM_MPDU_OK_BIT);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0CCK_cnt =3D GetPhyRxPktCounts(pAdapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 CCK_MPDU_OK_BIT);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -732,7 +732,7 @@ u32 r8712_GetPhyRxPk=
tReceived(<wbr>struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 _adapter *pAdapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0u32 r8712_GetPhyRxPktCRC32Error(<w=
br>struct _adapter *pAdapter)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 OFDM_cnt =3D 0, CCK_cnt =3D 0, HT_cnt =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 OFDM_cnt, CCK_cnt =3D 0, HT_cnt =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0OFDM_cnt =3D GetPhyRxPktCounts(pAdapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 OFDM_MPDU_FAIL_BIT);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0CCK_cnt =3D GetPhyRxPktCounts(pAdapter,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 CCK_MPDU_FAIL_BIT);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rts5208/<wb=
r>rtsx_chip.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rts5208/<wbr>rtsx_chip.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 3511157..5ec9d34 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rts5208/<wbr>rtsx_=
chip.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rts5208/<wbr>rtsx_=
chip.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -2086,7 +2086,7 @@ int rtsx_pre_handl=
e_interrupt(<wbr>struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 rtsx_chip *chip)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0u32 status, int_enable;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0bool exit_ss =3D false;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#ifdef SUPPORT_OCP
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 ocp_int =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u32 ocp_int;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0ocp_int =3D OC_INT;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0#endif
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/rts5208/sd.=
c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/rts5208/sd.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index bdd35b6..53db0cb 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/rts5208/sd.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/rts5208/sd.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -514,7 +514,7 @@ static int sd_check_=
csd(struct rtsx_chip
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *chip, char check_wp)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(1 &lt;&lt; =
(c_size_mult +
<br>&gt; =C2=A0 =C2=A0 =C2=A0 2)))
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0&lt;&lt; (blk_size - 9);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else {
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 total_sector =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 total_sector;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>total_sector =3D (((u32)rsp[8] &am=
p; 0x3f)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &lt;&lt; 16) |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0((u32)rsp[9] &lt;&lt; 8) |
<br>&gt; =C2=A0 =C2=A0 =C2=A0 (u32)rsp[10];
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -617,7 +617,7 @@ static void sd_choos=
e_proper_clock(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 rtsx_chip *chip)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static int sd_set_clock_divider(st=
ruct rtsx_chip *chip, u8
<br>&gt; =C2=A0 =C2=A0 =C2=A0 clk_div)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0int retval;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u8 mask =3D 0, val =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u8 mask, val =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0mask =3D 0x60;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (clk_div =3D=3D SD_CLK_DIVIDE_0)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/sm750fb/<wb=
r>ddk750_chip.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/sm750fb/<wbr>ddk750_chip.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 9aaf1fd..b2fbcfac 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/sm750fb/<wbr>ddk75=
0_chip.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/sm750fb/<wbr>ddk75=
0_chip.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -389,7 +389,7 @@ unsigned int sm750_f=
ormat_pll_reg(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 pll_value *pPLL)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0unsigned int OD =3D pPLL-&gt;OD;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0unsigned int M =3D pPLL-&gt;M;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0unsigned int N =3D pPLL-&gt;N;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0unsigned int reg =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0unsigned int reg;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0/*
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 * Note that all PLL&#39;s have the same format. Here, we
<br>&gt; =C2=A0 =C2=A0 =C2=A0 just use
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/sm750fb/<wb=
r>ddk750_power.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/sm750fb/<wbr>ddk750_power.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 6167e30..baf80c0 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/sm750fb/<wbr>ddk75=
0_power.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/sm750fb/<wbr>ddk75=
0_power.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -31,7 +31,7 @@ static unsigned int ge=
t_power_mode(void)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0 */
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0void sm750_set_power_mode(unsigned=
 int mode)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0unsigned int ctrl =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0unsigned int ctrl;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0ctrl =3D PEEK32(POWER_MODE_CTRL) &amp;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 ~POWER_MODE_CTRL_MODE_MASK;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/speakup/<wb=
r>speakup_ltlk.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/speakup/<wbr>speakup_ltlk.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index b474e8b..4f7fb35 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/speakup/<wbr>speak=
up_ltlk.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/speakup/<wbr>speak=
up_ltlk.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -156,7 +156,7 @@ static void synth_in=
terrogate(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 spk_synth *synth)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static int synth_probe(struct spk_=
synth *synth)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int failed =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int failed;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0failed =3D spk_serial_synth_probe(synth);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0if (failed =3D=3D 0)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/unisys/<wbr=
>visorbus/visorchipset.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/unisys/<wbr>visorbus/visorc=
hipset.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 336af52..576e7a9 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/unisys/<wbr>visorb=
us/visorchipset.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/unisys/<wbr>visorb=
us/visorchipset.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -350,7 +350,7 @@ static DEVICE_ATTR_R=
W(remaining_<wbr>steps);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static uuid_le
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0parser_id_get(struct parser_contex=
t *ctx)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct spar_controlvm_parameters_<wbr>header *phdr =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct spar_controlvm_parameters_<wbr>header *phdr;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0phdr =3D (struct spar_controlvm_parameters_<wbr>header
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *)(ctx-&gt;data);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0return phdr-&gt;id;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -396,7 +396,7 @@ parser_string_get(st=
ruct parser_context
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *ctx)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static void *
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0parser_name_get(struct parser_cont=
ext *ctx)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct spar_controlvm_parameters_<wbr>header *phdr =3D NULL;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0struct spar_controlvm_parameters_<wbr>header *phdr;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0phdr =3D (struct spar_controlvm_parameters_<wbr>header
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *)(ctx-&gt;data);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0ctx-&gt;curr =3D ctx-&gt;data + phdr-&gt;name_offset;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/wlan-ng/<wb=
r>cfg80211.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/wlan-ng/<wbr>cfg80211.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index aa0e5a3..b24d9bf 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/wlan-ng/<wbr>cfg80=
211.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/wlan-ng/<wbr>cfg80=
211.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -244,7 +244,7 @@ static int prism2_se=
t_default_key(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 wiphy *wiphy, struct net_device *dev,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0struct wlandevice *wlandev =3D dev-&gt;ml_priv;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0int err =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int result =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0int result;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0result =3D prism2_domibset_uint32(<wbr>wlandev,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DIDmib_<wbr>dot11s=
mt_dot11PrivacyTable_<wbr>dot11WEPDefaultKeyID,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; diff --git a/drivers/staging/xgifb/XGI_<=
wbr>main_26.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 b/drivers/staging/xgifb/XGI_<wbr>main_26.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; index 777cd6e..c6d2941 100644
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --- a/drivers/staging/xgifb/XGI_<wbr>mai=
n_26.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +++ b/drivers/staging/xgifb/XGI_<wbr>mai=
n_26.c
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; @@ -640,7 +640,7 @@ static void XGIfb_bp=
p_to_var(struct
<br>&gt; =C2=A0 =C2=A0 =C2=A0 xgifb_video_info *xgifb_info,
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0static void XGIfb_pre_setmode(stru=
ct xgifb_video_info
<br>&gt; =C2=A0 =C2=A0 =C2=A0 *xgifb_info)
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0{
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u8 cr30 =3D 0, cr31 =3D 0;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0u8 cr30 =3D 0, cr31;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0cr31 =3D xgifb_reg_get(XGICR, 0x31);
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0cr31 &amp;=3D ~0x60;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; 2.7.4
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; --
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; You received this message because you ar=
e subscribed to the
<br>&gt; =C2=A0 =C2=A0 =C2=A0 Google Groups &quot;outreachy-kernel&quot; gr=
oup.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To unsubscribe from this group and stop =
receiving emails from
<br>&gt; =C2=A0 =C2=A0 =C2=A0 it, send an email to <a>outreachy-kern...@<wb=
r>googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To post to this group, send email to
<br>&gt; =C2=A0 =C2=A0 =C2=A0 <a>outreach...@googlegroups.com</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; To view this discussion on the web visit=
https://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/201702=
21170356.GA12793%4" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.=
href=3D&#39;http://groups.google.com/d/msgid/outreachy-kernel/2017022117035=
6.GA12793%4&#39;;return true;" onclick=3D"this.href=3D&#39;http://groups.go=
ogle.com/d/msgid/outreachy-kernel/20170221170356.GA12793%4&#39;;return true=
;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>20170221170356.GA12=
793%4</a>
<br>&gt; =C2=A0 =C2=A0 =C2=A0 0singhal-Inspiron-5558.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt; For more options, visit <a href=3D"https=
://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow" onmousedo=
wn=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;return true;=
" onclick=3D"this.href=3D&#39;https://groups.google.com/d/optout&#39;;retur=
n true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt; =C2=A0 =C2=A0 =C2=A0 &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"lP03bhMmAQAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;ja=
vascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;r=
eturn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"lP03bhMmAQAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/b2c93b5d-3df1-4b04-b636-" target=
=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://groups.=
google.com/d/msgid/outreachy-kernel/b2c93b5d-3df1-4b04-b636-&#39;;return tr=
ue;" onclick=3D"this.href=3D&#39;http://groups.google.com/d/msgid/outreachy=
-kernel/b2c93b5d-3df1-4b04-b636-&#39;;return true;">groups.google.<wbr>com/=
d/msgid/outreachy-kernel/<wbr>b2c93b5d-3df1-4b04-b636-</a>
<br>&gt; 1235af0a7006%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/u=
rl?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dA=
FQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26s=
a\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;retur=
n true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;</blockquote><div>Please Ignore this patch=C2=A0</div></div>
------=_Part_2793_1319944304.1487700222469--

------=_Part_2792_1721956798.1487700222467--

