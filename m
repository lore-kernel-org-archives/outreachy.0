X-GM-THRID: 1756921593856
X-Received: by 10.152.36.132 with SMTP id q4mr323686laj.6.1424529725406;
        Sat, 21 Feb 2015 06:42:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.18 with SMTP id u18ls281337wij.13.canary; Sat, 21 Feb
 2015 06:42:05 -0800 (PST)
X-Received: by 10.194.86.1 with SMTP id l1mr324737wjz.0.1424529725106;
        Sat, 21 Feb 2015 06:42:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si324085wix.0.2015.02.21.06.42.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 06:42:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100854473"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 15:42:04 +0100
Date: Sat, 21 Feb 2015 15:41:58 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Remove typedefs
In-Reply-To: <1424521123-23632-1-git-send-email-dilekuzulmez@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211524410.2480@hadrien>
References: <1424521123-23632-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Feb 2015, Dilek Uzulmez wrote:

> This patch fixes "do not add new typedefs"
> checkpatch.pl warning in hfa384x.h
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 3bb8c1b..2be8876 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -355,7 +355,7 @@ struct hfa384x_bytestr {
>  	u8 data[0];
>  } __packed;
>
> -typedef struct hfa384x_bytestr32 {
> +struct hfa384x_bytestr32 {
>  	u16 len;
>  	u8 data[32];
>  } __packed hfa384x_bytestr32_t;

This is not the correct change.  The syntax of a typedef is:

typedef type new_typename;

You have changed it to variable declaration syntax:

type variable_name;

That is, you are now declaring hfa384x_bytestr32_t to be a variable.  This
should cause many compiler errors, if the typedef name was used.  To make
the change properly, you need to remove typedef and remove the new type
name.  This leaves only the name next to struct as the name of this type.
You should then go around to all of the uses of the typedef and change
them to use the struct type.

It may be that the typedef name is nicer than the existing name of the
struct type.  You can thus use that name instead for the struct type.  I
this case, it may be good to remove the trailing _t if there is any.

Remember to always compile your code.  In the case of a .h file, you can't
compile it directly.  But you can compile the complete driver that
contains it, to get the uses.  Be sure that you have .o file for each .c
file.

julia

> @@ -366,14 +366,14 @@ Configuration Record Structures:
>  --------------------------------------------------------------------*/
>
>  /*-- Hardware/Firmware Component Information ----------*/
> -typedef struct hfa384x_compident {
> +struct hfa384x_compident {
>  	u16 id;
>  	u16 variant;
>  	u16 major;
>  	u16 minor;
>  } __packed hfa384x_compident_t;
>
> -typedef struct hfa384x_caplevel {
> +struct hfa384x_caplevel {
>  	u16 role;
>  	u16 id;
>  	u16 variant;
> @@ -394,27 +394,27 @@ Configuration Record Structures:
>  #define HFA384x_CREATEIBSS_JOINCREATEIBSS          0
>
>  /*-- Configuration Record: HostScanRequest (data portion only) --*/
> -typedef struct hfa384x_HostScanRequest_data {
> +struct hfa384x_HostScanRequest_data {
>  	u16 channelList;
>  	u16 txRate;
>  	hfa384x_bytestr32_t ssid;
>  } __packed hfa384x_HostScanRequest_data_t;
>
>  /*-- Configuration Record: JoinRequest (data portion only) --*/
> -typedef struct hfa384x_JoinRequest_data {
> +struct hfa384x_JoinRequest_data {
>  	u8 bssid[WLAN_BSSID_LEN];
>  	u16 channel;
>  } __packed hfa384x_JoinRequest_data_t;
>
>  /*-- Configuration Record: authenticateStation (data portion only) --*/
> -typedef struct hfa384x_authenticateStation_data {
> +struct hfa384x_authenticateStation_data {
>  	u8 address[ETH_ALEN];
>  	u16 status;
>  	u16 algorithm;
>  } __packed hfa384x_authenticateStation_data_t;
>
>  /*-- Configuration Record: WPAData       (data portion only) --*/
> -typedef struct hfa384x_WPAData {
> +struct hfa384x_WPAData {
>  	u16 datalen;
>  	u8 data[0];		/* max 80 */
>  } __packed hfa384x_WPAData_t;
> @@ -425,7 +425,7 @@ Information Record Structures: NIC Information
>
>  /*-- Information Record: DownLoadBuffer --*/
>  /* NOTE: The page and offset are in AUX format */
> -typedef struct hfa384x_downloadbuffer {
> +struct hfa384x_downloadbuffer {
>  	u16 page;
>  	u16 offset;
>  	u16 len;
> @@ -438,14 +438,14 @@ Information Record Structures: NIC Information
>  #define HFA384x_PSTATUS_CONN_IBSS	((u16)3)
>
>  /*-- Information Record: commsquality --*/
> -typedef struct hfa384x_commsquality {
> +struct hfa384x_commsquality {
>  	u16 CQ_currBSS;
>  	u16 ASL_currBSS;
>  	u16 ANL_currFC;
>  } __packed hfa384x_commsquality_t;
>
>  /*-- Information Record: dmbcommsquality --*/
> -typedef struct hfa384x_dbmcommsquality {
> +struct hfa384x_dbmcommsquality {
>  	u16 CQdbm_currBSS;
>  	u16 ASLdbm_currBSS;
>  	u16 ANLdbm_currFC;
> @@ -457,7 +457,7 @@ FRAME STRUCTURES: Communication Frames
>  Communication Frames: Transmit Frames
>  --------------------------------------------------------------------*/
>  /*-- Communication Frame: Transmit Frame Structure --*/
> -typedef struct hfa384x_tx_frame {
> +struct hfa384x_tx_frame {
>  	u16 status;
>  	u16 reserved1;
>  	u16 reserved2;
> @@ -519,7 +519,7 @@ Communication Frames: Test/Get/Set Field Values for Transmit Frames
>  Communication Frames: Receive Frames
>  --------------------------------------------------------------------*/
>  /*-- Communication Frame: Receive Frame Structure --*/
> -typedef struct hfa384x_rx_frame {
> +struct hfa384x_rx_frame {
>  	/*-- MAC rx descriptor (hfa384x byte order) --*/
>  	u16 status;
>  	u32 time;
> @@ -586,7 +586,7 @@ Information Frames: Notification Frame Structures
>  --------------------------------------------------------------------*/
>
>  /*--  Inquiry Frame, Diagnose: Communication Tallies --*/
> -typedef struct hfa384x_CommTallies16 {
> +struct hfa384x_CommTallies16 {
>  	u16 txunicastframes;
>  	u16 txmulticastframes;
>  	u16 txfragments;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424521123-23632-1-git-send-email-dilekuzulmez%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

