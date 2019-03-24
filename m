X-GM-THRID: 6671711109199691776
X-Received: by 2002:a2e:9786:: with SMTP id y6mr8712421lji.79.1553408528479;
        Sat, 23 Mar 2019 23:22:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b04e:: with SMTP id d14ls1429970ljl.7.gmail; Sat, 23 Mar
 2019 23:22:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz6tHv/Je6ovN/wBjP7mohSY9CnOwz7FVXai0gaSsjlD8WZBVlupRO7MHB7VZSyaF06dxCv
X-Received: by 2002:a2e:8156:: with SMTP id t22mr481035ljg.77.1553408527418;
        Sat, 23 Mar 2019 23:22:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553408527; cv=none;
        d=google.com; s=arc-20160816;
        b=u+Aq9YyOXE1jYuJ1UqYKVnNYgNSW/hwSjzG6rfQO4q64i1Od5YNJxiR/RhfFo0an8s
         b6ocP1S7iEHpsziI7s7T1gWiLr/SO7UvrzrWpf4eXeTX4TZ0oMLcea9+iwfMFuCi6SoZ
         DkJNjA5YilPU3qcT1XGmf08eT6IMtXY0JxFG7lm2pJjX++Hvapz2v5g7mQfbwnZUqZSC
         vgEFjENxN34bTvGPWK6xu9fTFm0+e1sTZZKT1M0mLqOgEAxTM5Q+w+5FdTaQ8YKPRkKX
         wyb2z1DeUJE16kxoLfpu0c3Qc83IVcztmGGFiMqCU65OCIkrawu5aJGdhs5A0M0nxnT7
         sMyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=1rXnNVIqwJo2bNdJpTiOPh2tdXHt27orFZnXqmo3VrY=;
        b=hsz9vLzRxRQsMQo0oHPs1eqaTYASbLEJgaZFXj6YqzZC/u9P83WH1vJObyjY2+NleG
         cojIeCpkhn1qSyymXBInZ5eJRspDhG8IkA+upV8oYDo1SFXkJwhEueA4XB6o5DHWFReH
         Y0b1iOMGNyVQ84Ww1rqgcRStXKCg3Ar7TS4VvgrEKy+9qZwFtBrJPev87VNuNRJuK6t6
         h59Foe0gPvJs2fhEVoe9jIiv9DCu2WePqxCYRuDo3zWqQy+7EUTf1zeLEhbAu7+gMVKF
         +hLUW3UtXqLfcwi7kM25nopwzbXhXwqvQSaYL1kTG0mzgnlR2sy9zVj2wOJ8FQkmt8hk
         H2yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m17si390142lfl.0.2019.03.23.23.22.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 23:22:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300509631"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 07:22:05 +0100
Date: Sun, 24 Mar 2019 07:22:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatsala Narang <vatsalanarang@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] staging: rtl8723bs: include:
 Eliminate p from structure field
In-Reply-To: <20190323220611.9385-1-vatsalanarang@gmail.com>
Message-ID: <alpine.DEB.2.21.1903240712570.2526@hadrien>
References: <20190323220611.9385-1-vatsalanarang@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Mar 2019, Vatsala Narang wrote:

> Getting rid of p's from structure field 'pbuf'

You have removed the p's from a lot of things that are not structure
fields.  I the beginning you had a specific structure, and it had a field
called pbuf that I suggested to rename as buf.  As part of that renaming,
you should go around and look for the other uses of that structure and
change their refererences to the pbuf field to buf as well.  One way that
can help you do this is to use Coccinelle:

@@
struct thestructure x;
@@

- x.pbuf
+ x.buf

@@
struct thestructure *x;
@@

- x->pbuf
+ x->buf

(I don't remember the name of the structure, so you should fill that in).
Another somewhat reliable way to automate it is to just iteratively compile
the code and fix up the error messages as they occur.  You can also grep
for each use of the structure name, and then look by hand for all
occurrences of the field.  In practice, you may want to use all three
approaches,

You approach seems to be going into your editor and doing search and
replace of pbuf by buf.  This can cause problems if there are uses of pbuf
that should not change, eg because they come from some other part of the
kernel.  Fortunately this is not very likely, because the rest of the
kernel doensn't use variable names like that.

I still don't understand why you don't end up changing a single .c file.
Either a lot of things are not used or something is wrong.  Did you compile
the code?

julia


>
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
> change in v3:
>  -added this to patchset
>
>  .../staging/rtl8723bs/include/hal_btcoex.h    |   2 +-
>  drivers/staging/rtl8723bs/include/ieee80211.h |   6 +-
>  drivers/staging/rtl8723bs/include/rtw_ap.h    |   4 +-
>  drivers/staging/rtl8723bs/include/rtw_event.h |   2 +-
>  drivers/staging/rtl8723bs/include/rtw_io.h    |   2 +-
>  .../staging/rtl8723bs/include/rtw_mlme_ext.h  |  68 ++++----
>  drivers/staging/rtl8723bs/include/rtw_recv.h  |   2 +-
>  drivers/staging/rtl8723bs/include/rtw_xmit.h  |   2 +-
>  drivers/staging/rtl8723bs/include/sdio_ops.h  |   4 +-
>  drivers/staging/rtl8723bs/include/wifi.h      | 164 +++++++++---------
>  10 files changed, 128 insertions(+), 128 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
> index 4066b0a1450c..720f4ff02de5 100644
> --- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
> +++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
> @@ -53,7 +53,7 @@ u8 hal_btcoex_RpwmVal(struct adapter *);
>  u8 hal_btcoex_LpsVal(struct adapter *);
>  u32 hal_btcoex_GetRaMask(struct adapter *);
>  void hal_btcoex_RecordPwrMode(struct adapter *padapter, u8 *pCmdBuf, u8 cmdLen);
> -void hal_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
> +void hal_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *buf, u32 bufsize);
>  void hal_btcoex_SetDBG(struct adapter *, u32 *pDbgModule);
>  u32 hal_btcoex_GetDBG(struct adapter *, u8 *pStrBuf, u32 bufSize);
>
> diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
> index 9efb4dcb9d3a..156280dfae64 100644
> --- a/drivers/staging/rtl8723bs/include/ieee80211.h
> +++ b/drivers/staging/rtl8723bs/include/ieee80211.h
> @@ -1122,8 +1122,8 @@ ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
>  				struct rtw_ieee802_11_elems *elems,
>  				int show_errors);
>
> -u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *source, unsigned int *frlen);
> -u8 *rtw_set_ie(u8 *pbuf, sint index, uint len, u8 *source, uint *frlen);
> +u8 *rtw_set_fixed_ie(unsigned char *buf, unsigned int len, unsigned char *source, unsigned int *frlen);
> +u8 *rtw_set_ie(u8 *buf, sint index, uint len, u8 *source, uint *frlen);
>
>  enum secondary_ch_offset {
>  	SCN = 0, /* no secondary channel */
> @@ -1131,7 +1131,7 @@ enum secondary_ch_offset {
>  	SCB = 3,  /* secondary channel below */
>  };
>
> -u8 *rtw_get_ie(u8*pbuf, sint index, sint *len, sint limit);
> +u8 *rtw_get_ie(u8*buf, sint index, sint *len, sint limit);
>  u8 *rtw_get_ie_ex(u8 *in_ie, uint in_len, u8 eid, u8 *oui, u8 oui_len, u8 *ie, uint *ielen);
>  int rtw_ies_remove_ie(u8 *ies, uint *ies_len, uint offset, u8 eid, u8 *oui, u8 oui_len);
>
> diff --git a/drivers/staging/rtl8723bs/include/rtw_ap.h b/drivers/staging/rtl8723bs/include/rtw_ap.h
> index fd56c9db16a9..1d5c64328106 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_ap.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_ap.h
> @@ -14,8 +14,8 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx);
>  void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level);
>  void expire_timeout_chk(struct adapter *padapter);
>  void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta);
> -void start_bss_network(struct adapter *padapter, u8 *pbuf);
> -int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len);
> +void start_bss_network(struct adapter *padapter, u8 *buf);
> +int rtw_check_beacon_data(struct adapter *padapter, u8 *buf,  int len);
>  void rtw_ap_restore_network(struct adapter *padapter);
>  void rtw_set_macaddr_acl(struct adapter *padapter, int mode);
>  int rtw_acl_add_sta(struct adapter *padapter, u8 *addr);
> diff --git a/drivers/staging/rtl8723bs/include/rtw_event.h b/drivers/staging/rtl8723bs/include/rtw_event.h
> index ee80aa21eb10..69bc2f157b69 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_event.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_event.h
> @@ -76,7 +76,7 @@ struct wmm_event
>
>  struct fwevent {
>  	u32 parmsize;
> -	void (*event_callback)(struct adapter *dev, u8 *pbuf);
> +	void (*event_callback)(struct adapter *dev, u8 *buf);
>  };
>
>
> diff --git a/drivers/staging/rtl8723bs/include/rtw_io.h b/drivers/staging/rtl8723bs/include/rtw_io.h
> index 99d104b3647a..361f2150d604 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_io.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_io.h
> @@ -114,7 +114,7 @@ struct io_req {
>  	volatile u32 val;
>  	u32 command;
>  	u32 status;
> -	u8 *pbuf;
> +	u8 *buf;
>
>  	void (*_async_io_callback)(struct adapter *padater, struct io_req *pio_req, u8 *cnxt);
>  	u8 *cnxt;
> diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> index f6eabad4bbe0..eb31ec01d290 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_mlme_ext.h
> @@ -748,41 +748,41 @@ int rtw_get_ch_setting_union(struct adapter *adapter, u8 *ch, u8 *bw, u8 *offset
>
>  struct cmd_hdl {
>  	uint	parmsize;
> -	u8 (*h2cfuns)(struct adapter *padapter, u8 *pbuf);
> +	u8 (*h2cfuns)(struct adapter *padapter, u8 *buf);
>  };
>
>
> -u8 read_macreg_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 write_macreg_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 read_bbreg_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 write_bbreg_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 read_rfreg_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 write_rfreg_hdl(struct adapter *padapter, u8 *pbuf);
> -
> -
> -u8 NULL_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 join_cmd_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 disconnect_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 createbss_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 setopmode_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 sitesurvey_cmd_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 setauth_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 setkey_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 set_stakey_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 set_assocsta_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 del_assocsta_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 add_ba_hdl(struct adapter *padapter, unsigned char *pbuf);
> -
> -u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 h2c_msg_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 set_ch_hdl(struct adapter *padapter, u8 *pbuf);
> -u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 set_csa_hdl(struct adapter *padapter, unsigned char *pbuf);	/* Kurt: Handling DFS channel switch announcement ie. */
> -u8 tdls_hdl(struct adapter *padapter, unsigned char *pbuf);
> -u8 run_in_thread_hdl(struct adapter *padapter, u8 *pbuf);
> +u8 read_macreg_hdl(struct adapter *padapter, u8 *buf);
> +u8 write_macreg_hdl(struct adapter *padapter, u8 *buf);
> +u8 read_bbreg_hdl(struct adapter *padapter, u8 *buf);
> +u8 write_bbreg_hdl(struct adapter *padapter, u8 *buf);
> +u8 read_rfreg_hdl(struct adapter *padapter, u8 *buf);
> +u8 write_rfreg_hdl(struct adapter *padapter, u8 *buf);
> +
> +
> +u8 NULL_hdl(struct adapter *padapter, u8 *buf);
> +u8 join_cmd_hdl(struct adapter *padapter, u8 *buf);
> +u8 disconnect_hdl(struct adapter *padapter, u8 *buf);
> +u8 createbss_hdl(struct adapter *padapter, u8 *buf);
> +u8 setopmode_hdl(struct adapter *padapter, u8 *buf);
> +u8 sitesurvey_cmd_hdl(struct adapter *padapter, u8 *buf);
> +u8 setauth_hdl(struct adapter *padapter, u8 *buf);
> +u8 setkey_hdl(struct adapter *padapter, u8 *buf);
> +u8 set_stakey_hdl(struct adapter *padapter, u8 *buf);
> +u8 set_assocsta_hdl(struct adapter *padapter, u8 *buf);
> +u8 del_assocsta_hdl(struct adapter *padapter, u8 *buf);
> +u8 add_ba_hdl(struct adapter *padapter, unsigned char *buf);
> +
> +u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *buf);
> +u8 h2c_msg_hdl(struct adapter *padapter, unsigned char *buf);
> +u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *buf);
> +u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *buf);
> +u8 set_ch_hdl(struct adapter *padapter, u8 *buf);
> +u8 set_chplan_hdl(struct adapter *padapter, unsigned char *buf);
> +u8 led_blink_hdl(struct adapter *padapter, unsigned char *buf);
> +u8 set_csa_hdl(struct adapter *padapter, unsigned char *buf);	/* Kurt: Handling DFS channel switch announcement ie. */
> +u8 tdls_hdl(struct adapter *padapter, unsigned char *buf);
> +u8 run_in_thread_hdl(struct adapter *padapter, u8 *buf);
>
>
>  #define GEN_DRV_CMD_HANDLER(size, cmd)	{size, &cmd ## _hdl},
> @@ -804,8 +804,8 @@ struct C2HEvent_Header
>  	unsigned int rsvd;
>  };
>
> -void rtw_dummy_event_callback(struct adapter *adapter , u8 *pbuf);
> -void rtw_fwdbg_event_callback(struct adapter *adapter , u8 *pbuf);
> +void rtw_dummy_event_callback(struct adapter *adapter , u8 *buf);
> +void rtw_fwdbg_event_callback(struct adapter *adapter , u8 *buf);
>
>  enum rtw_c2h_event
>  {
> diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
> index b4ac00e2ba43..93567f804cb8 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_recv.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
> @@ -304,7 +304,7 @@ struct recv_buf
>
>  	struct adapter *adapter;
>
> -	u8 *pbuf;
> +	u8 *buf;
>  	u8 *allocated_buf;
>
>  	u32 len;
> diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
> index 6e4e047ad5cc..6058d529dd52 100644
> --- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
> +++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
> @@ -254,7 +254,7 @@ struct xmit_buf
>
>  	u8 *allocated_buf;
>
> -	u8 *pbuf;
> +	u8 *buf;
>
>  	void *priv_data;
>
> diff --git a/drivers/staging/rtl8723bs/include/sdio_ops.h b/drivers/staging/rtl8723bs/include/sdio_ops.h
> index 0f117ff1fbbe..7e663f26073b 100644
> --- a/drivers/staging/rtl8723bs/include/sdio_ops.h
> +++ b/drivers/staging/rtl8723bs/include/sdio_ops.h
> @@ -16,8 +16,8 @@ extern void sdio_set_intf_ops(struct adapter *padapter, struct _io_ops *pops);
>  /* extern void sdio_func1cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *wmem); */
>  extern u8 SdioLocalCmd52Read1Byte(struct adapter *padapter, u32 addr);
>  extern void SdioLocalCmd52Write1Byte(struct adapter *padapter, u32 addr, u8 v);
> -extern s32 sdio_local_read(struct adapter *padapter, u32 addr, u32 cnt, u8 *pbuf);
> -extern s32 sdio_local_write(struct adapter *padapter, u32 addr, u32 cnt, u8 *pbuf);
> +extern s32 sdio_local_read(struct adapter *padapter, u32 addr, u32 cnt, u8 *buf);
> +extern s32 sdio_local_write(struct adapter *padapter, u32 addr, u32 cnt, u8 *buf);
>
>  u32 _sdio_read32(struct adapter *padapter, u32 addr);
>  s32 _sdio_write32(struct adapter *padapter, u32 addr, u32 val);
> diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
> index ee1994ecbf18..da39adbe4606 100644
> --- a/drivers/staging/rtl8723bs/include/wifi.h
> +++ b/drivers/staging/rtl8723bs/include/wifi.h
> @@ -198,147 +198,147 @@ enum WIFI_REG_DOMAIN {
>  #define _PRIVACY_	BIT(14)
>  #define _ORDER_			BIT(15)
>
> -#define SetToDs(pbuf)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16(_TO_DS_)
> +#define SetToDs(buf)	\
> +	*(__le16 *)(buf) |= cpu_to_le16(_TO_DS_)
>
> -#define GetToDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_TO_DS_)) != 0)
> +#define GetToDs(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_TO_DS_)) != 0)
>
> -#define ClearToDs(pbuf)	\
> -	*(__le16 *)(pbuf) &= (~cpu_to_le16(_TO_DS_))
> +#define ClearToDs(buf)	\
> +	*(__le16 *)(buf) &= (~cpu_to_le16(_TO_DS_))
>
> -#define SetFrDs(pbuf)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16(_FROM_DS_)
> +#define SetFrDs(buf)	\
> +	*(__le16 *)(buf) |= cpu_to_le16(_FROM_DS_)
>
> -#define GetFrDs(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_FROM_DS_)) != 0)
> +#define GetFrDs(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_FROM_DS_)) != 0)
>
> -#define ClearFrDs(pbuf)	\
> -	*(__le16 *)(pbuf) &= (~cpu_to_le16(_FROM_DS_))
> +#define ClearFrDs(buf)	\
> +	*(__le16 *)(buf) &= (~cpu_to_le16(_FROM_DS_))
>
>  #define get_tofr_ds(pframe)	((GetToDs(pframe) << 1) | GetFrDs(pframe))
>
> -#define SetMFrag(pbuf)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_FRAG_)
> +#define SetMFrag(buf)	\
> +	*(__le16 *)(buf) |= cpu_to_le16(_MORE_FRAG_)
>
> -#define GetMFrag(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_MORE_FRAG_)) != 0)
> +#define GetMFrag(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_MORE_FRAG_)) != 0)
>
> -#define ClearMFrag(pbuf)	\
> -	*(__le16 *)(pbuf) &= (~cpu_to_le16(_MORE_FRAG_))
> +#define ClearMFrag(buf)	\
> +	*(__le16 *)(buf) &= (~cpu_to_le16(_MORE_FRAG_))
>
> -#define SetRetry(pbuf)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16(_RETRY_)
> +#define SetRetry(buf)	\
> +	*(__le16 *)(buf) |= cpu_to_le16(_RETRY_)
>
> -#define GetRetry(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_RETRY_)) != 0)
> +#define GetRetry(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_RETRY_)) != 0)
>
> -#define ClearRetry(pbuf)	\
> -	*(__le16 *)(pbuf) &= (~cpu_to_le16(_RETRY_))
> +#define ClearRetry(buf)	\
> +	*(__le16 *)(buf) &= (~cpu_to_le16(_RETRY_))
>
> -#define SetPwrMgt(pbuf)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16(_PWRMGT_)
> +#define SetPwrMgt(buf)	\
> +	*(__le16 *)(buf) |= cpu_to_le16(_PWRMGT_)
>
> -#define GetPwrMgt(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_PWRMGT_)) != 0)
> +#define GetPwrMgt(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_PWRMGT_)) != 0)
>
> -#define ClearPwrMgt(pbuf)	\
> -	*(__le16 *)(pbuf) &= (~cpu_to_le16(_PWRMGT_))
> +#define ClearPwrMgt(buf)	\
> +	*(__le16 *)(buf) &= (~cpu_to_le16(_PWRMGT_))
>
> -#define SetMData(pbuf)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16(_MORE_DATA_)
> +#define SetMData(buf)	\
> +	*(__le16 *)(buf) |= cpu_to_le16(_MORE_DATA_)
>
> -#define GetMData(pbuf)	(((*(__le16 *)(pbuf)) & cpu_to_le16(_MORE_DATA_)) != 0)
> +#define GetMData(buf)	(((*(__le16 *)(buf)) & cpu_to_le16(_MORE_DATA_)) != 0)
>
> -#define ClearMData(pbuf)	\
> -	*(__le16 *)(pbuf) &= (~cpu_to_le16(_MORE_DATA_))
> +#define ClearMData(buf)	\
> +	*(__le16 *)(buf) &= (~cpu_to_le16(_MORE_DATA_))
>
> -#define SetPrivacy(pbuf)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16(_PRIVACY_)
> +#define SetPrivacy(buf)	\
> +	*(__le16 *)(buf) |= cpu_to_le16(_PRIVACY_)
>
> -#define GetPrivacy(pbuf)					\
> -	(((*(__le16 *)(pbuf)) & cpu_to_le16(_PRIVACY_)) != 0)
> +#define GetPrivacy(buf)					\
> +	(((*(__le16 *)(buf)) & cpu_to_le16(_PRIVACY_)) != 0)
>
> -#define ClearPrivacy(pbuf)	\
> -	*(__le16 *)(pbuf) &= (~cpu_to_le16(_PRIVACY_))
> +#define ClearPrivacy(buf)	\
> +	*(__le16 *)(buf) &= (~cpu_to_le16(_PRIVACY_))
>
>
> -#define GetOrder(pbuf)					\
> -	(((*(__le16 *)(pbuf)) & cpu_to_le16(_ORDER_)) != 0)
> +#define GetOrder(buf)					\
> +	(((*(__le16 *)(buf)) & cpu_to_le16(_ORDER_)) != 0)
>
> -#define GetFrameType(pbuf)				\
> -	(le16_to_cpu(*(__le16 *)(pbuf)) & (BIT(3) | BIT(2)))
> +#define GetFrameType(buf)				\
> +	(le16_to_cpu(*(__le16 *)(buf)) & (BIT(3) | BIT(2)))
>
> -#define SetFrameType(pbuf, type)	\
> +#define SetFrameType(buf, type)	\
>  	do {	\
> -		*(unsigned short *)(pbuf) &= __constant_cpu_to_le16(~(BIT(3) | BIT(2))); \
> -		*(unsigned short *)(pbuf) |= __constant_cpu_to_le16(type); \
> +		*(unsigned short *)(buf) &= __constant_cpu_to_le16(~(BIT(3) | BIT(2))); \
> +		*(unsigned short *)(buf) |= __constant_cpu_to_le16(type); \
>  	} while (0)
>
> -#define GetFrameSubType(pbuf)	(le16_to_cpu(*(__le16 *)(pbuf)) & (BIT(7) |\
> +#define GetFrameSubType(buf)	(le16_to_cpu(*(__le16 *)(buf)) & (BIT(7) |\
>  	 BIT(6) | BIT(5) | BIT(4) | BIT(3) | BIT(2)))
>
> -#define SetFrameSubType(pbuf, type) \
> +#define SetFrameSubType(buf, type) \
>  	do {    \
> -		*(__le16 *)(pbuf) &= cpu_to_le16(~(BIT(7) | BIT(6) |	\
> +		*(__le16 *)(buf) &= cpu_to_le16(~(BIT(7) | BIT(6) |	\
>  		 BIT(5) | BIT(4) | BIT(3) | BIT(2))); \
> -		*(__le16 *)(pbuf) |= cpu_to_le16(type); \
> +		*(__le16 *)(buf) |= cpu_to_le16(type); \
>  	} while (0)
>
> -#define GetSequence(pbuf)			\
> -	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) + 22)) >> 4)
> +#define GetSequence(buf)			\
> +	(le16_to_cpu(*(__le16 *)((size_t)(buf) + 22)) >> 4)
>
> -#define GetFragNum(pbuf)			\
> -	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) + 22)) & 0x0f)
> +#define GetFragNum(buf)			\
> +	(le16_to_cpu(*(__le16 *)((size_t)(buf) + 22)) & 0x0f)
>
> -#define GetTupleCache(pbuf)			\
> -	(cpu_to_le16(*(unsigned short *)((size_t)(pbuf) + 22)))
> +#define GetTupleCache(buf)			\
> +	(cpu_to_le16(*(unsigned short *)((size_t)(buf) + 22)))
>
> -#define SetFragNum(pbuf, num) \
> +#define SetFragNum(buf, num) \
>  	do {    \
> -		*(unsigned short *)((size_t)(pbuf) + 22) = \
> -			((*(unsigned short *)((size_t)(pbuf) + 22)) &	\
> +		*(unsigned short *)((size_t)(buf) + 22) = \
> +			((*(unsigned short *)((size_t)(buf) + 22)) &	\
>  			le16_to_cpu(~(0x000f))) | \
>  			cpu_to_le16(0x0f & (num));     \
>  	} while (0)
>
> -#define SetSeqNum(pbuf, num) \
> +#define SetSeqNum(buf, num) \
>  	do {    \
> -		*(__le16 *)((size_t)(pbuf) + 22) = \
> -			((*(__le16 *)((size_t)(pbuf) + 22)) & cpu_to_le16((unsigned short)0x000f)) | \
> +		*(__le16 *)((size_t)(buf) + 22) = \
> +			((*(__le16 *)((size_t)(buf) + 22)) & cpu_to_le16((unsigned short)0x000f)) | \
>  			cpu_to_le16((unsigned short)(0xfff0 & (num << 4))); \
>  	} while (0)
>
> -#define SetDuration(pbuf, dur) \
> -	*(__le16 *)((size_t)(pbuf) + 2) = cpu_to_le16(0xffff & (dur))
> +#define SetDuration(buf, dur) \
> +	*(__le16 *)((size_t)(buf) + 2) = cpu_to_le16(0xffff & (dur))
>
>
> -#define SetPriority(pbuf, tid)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16(tid & 0xf)
> +#define SetPriority(buf, tid)	\
> +	*(__le16 *)(buf) |= cpu_to_le16(tid & 0xf)
>
> -#define GetPriority(pbuf)	((le16_to_cpu(*(__le16 *)(pbuf))) & 0xf)
> +#define GetPriority(buf)	((le16_to_cpu(*(__le16 *)(buf))) & 0xf)
>
> -#define SetEOSP(pbuf, eosp)	\
> -		*(__le16 *)(pbuf) |= cpu_to_le16((eosp & 1) << 4)
> +#define SetEOSP(buf, eosp)	\
> +		*(__le16 *)(buf) |= cpu_to_le16((eosp & 1) << 4)
>
> -#define SetAckpolicy(pbuf, ack)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16((ack & 3) << 5)
> +#define SetAckpolicy(buf, ack)	\
> +	*(__le16 *)(buf) |= cpu_to_le16((ack & 3) << 5)
>
> -#define GetAckpolicy(pbuf) (((le16_to_cpu(*(__le16 *)pbuf)) >> 5) & 0x3)
> +#define GetAckpolicy(buf) (((le16_to_cpu(*(__le16 *)buf)) >> 5) & 0x3)
>
> -#define GetAMsdu(pbuf) (((le16_to_cpu(*(__le16 *)pbuf)) >> 7) & 0x1)
> +#define GetAMsdu(buf) (((le16_to_cpu(*(__le16 *)buf)) >> 7) & 0x1)
>
> -#define SetAMsdu(pbuf, amsdu)	\
> -	*(__le16 *)(pbuf) |= cpu_to_le16((amsdu & 1) << 7)
> +#define SetAMsdu(buf, amsdu)	\
> +	*(__le16 *)(buf) |= cpu_to_le16((amsdu & 1) << 7)
>
> -#define GetAid(pbuf)	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) + 2)) & 0x3fff)
> +#define GetAid(buf)	(le16_to_cpu(*(__le16 *)((size_t)(buf) + 2)) & 0x3fff)
>
> -#define GetTid(pbuf)	(le16_to_cpu(*(__le16 *)((size_t)(pbuf) +	\
> -			(((GetToDs(pbuf)<<1) | GetFrDs(pbuf)) == 3 ?	\
> +#define GetTid(buf)	(le16_to_cpu(*(__le16 *)((size_t)(buf) +	\
> +			(((GetToDs(buf)<<1) | GetFrDs(buf)) == 3 ?	\
>  			30 : 24))) & 0x000f)
>
> -#define GetAddr1Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 4))
> +#define GetAddr1Ptr(buf)	((unsigned char *)((size_t)(buf) + 4))
>
> -#define GetAddr2Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 10))
> +#define GetAddr2Ptr(buf)	((unsigned char *)((size_t)(buf) + 10))
>
> -#define GetAddr3Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 16))
> +#define GetAddr3Ptr(buf)	((unsigned char *)((size_t)(buf) + 16))
>
> -#define GetAddr4Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 24))
> +#define GetAddr4Ptr(buf)	((unsigned char *)((size_t)(buf) + 24))
>
>  #define MacAddr_isBcst(addr) \
>  	(\
> @@ -633,12 +633,12 @@ enum ELEMENT_ID {
>  				Below is the definition for 802.11n
>  ------------------------------------------------------------------------------*/
>
> -#define SetOrderBit(pbuf)	\
> +#define SetOrderBit(buf)	\
>  	do	{	\
> -		*(unsigned short *)(pbuf) |= cpu_to_le16(_ORDER_); \
> +		*(unsigned short *)(buf) |= cpu_to_le16(_ORDER_); \
>  	} while (0)
>
> -#define GetOrderBit(pbuf)	(((*(unsigned short *)(pbuf)) & cpu_to_le16(_ORDER_)) != 0)
> +#define GetOrderBit(buf)	(((*(unsigned short *)(buf)) & cpu_to_le16(_ORDER_)) != 0)
>
>  #define ACT_CAT_VENDOR				0x7F/* 127 */
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190323220611.9385-1-vatsalanarang%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

