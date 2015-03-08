X-GM-THRID: 7122168315904
X-Received: by 10.112.98.38 with SMTP id ef6mr2686328lbb.3.1425834622655;
        Sun, 08 Mar 2015 10:10:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.193 with SMTP id cw1ls403205wib.44.gmail; Sun, 08 Mar
 2015 10:10:22 -0700 (PDT)
X-Received: by 10.194.236.196 with SMTP id uw4mr311163wjc.5.1425834622220;
        Sun, 08 Mar 2015 10:10:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id bg8si614991wib.3.2015.03.08.10.10.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 10:10:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,363,1422918000"; 
   d="scan'208";a="102522671"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Mar 2015 18:10:21 +0100
Date: Sun, 8 Mar 2015 18:10:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Darshana Padmadas <darshanapadmadas@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: rtl8192e: Replace min
 with min_t
In-Reply-To: <4e1526d0654a77e3df0f924f3bad671243a11ba9.1425833758.git.darshanapadmadas@gmail.com>
Message-ID: <alpine.DEB.2.10.1503081809500.2780@hadrien>
References: <cover.1425833758.git.darshanapadmadas@gmail.com> <4e1526d0654a77e3df0f924f3bad671243a11ba9.1425833758.git.darshanapadmadas@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 8 Mar 2015, Darshana Padmadas wrote:

> This patch replaces min with min_t and eliminates the
> following warnings found by checkpatch.pl:
>
> WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)
> WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)
> WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)
> WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)
> WARNING: min() should probably be min_t(u8, info_element->len, MAX_IE_LEN)

You don't need to show all the instances of the message, at least if they
are all the same.

julia

>
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_rx.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
> index 1664040..0386568 100644
> --- a/drivers/staging/rtl8192e/rtllib_rx.c
> +++ b/drivers/staging/rtl8192e/rtllib_rx.c
> @@ -1908,7 +1908,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
>  				   info_element->data[2] == 0x4c &&
>  				   info_element->data[3] == 0x033) {
>
> -						tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
> +						tmp_htcap_len = min_t(u8, info_element->len, MAX_IE_LEN);
>  						if (tmp_htcap_len != 0) {
>  							network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
>  							network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ?
> @@ -1932,7 +1932,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
>  				    info_element->data[1] == 0x90 &&
>  				    info_element->data[2] == 0x4c &&
>  				    info_element->data[3] == 0x034) {
> -					tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
> +					tmp_htinfo_len = min_t(u8, info_element->len, MAX_IE_LEN);
>  					if (tmp_htinfo_len != 0) {
>  						network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
>  						if (tmp_htinfo_len) {
> @@ -1953,7 +1953,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
>  					    info_element->data[1] == 0xe0 &&
>  					    info_element->data[2] == 0x4c &&
>  					    info_element->data[3] == 0x02) {
> -						ht_realtek_agg_len = min(info_element->len, (u8)MAX_IE_LEN);
> +						ht_realtek_agg_len = min_t(u8, info_element->len, MAX_IE_LEN);
>  						memcpy(ht_realtek_agg_buf, info_element->data, info_element->len);
>  					}
>  					if (ht_realtek_agg_len >= 5) {
> @@ -2083,7 +2083,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
>  		case MFIE_TYPE_HT_CAP:
>  			RTLLIB_DEBUG_SCAN("MFIE_TYPE_HT_CAP: %d bytes\n",
>  					     info_element->len);
> -			tmp_htcap_len = min(info_element->len, (u8)MAX_IE_LEN);
> +			tmp_htcap_len = min_t(u8, info_element->len, MAX_IE_LEN);
>  			if (tmp_htcap_len != 0) {
>  				network->bssht.bdHTSpecVer = HT_SPEC_VER_EWC;
>  				network->bssht.bdHTCapLen = tmp_htcap_len > sizeof(network->bssht.bdHTCapBuf) ?
> @@ -2110,7 +2110,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
>  		case MFIE_TYPE_HT_INFO:
>  			RTLLIB_DEBUG_SCAN("MFIE_TYPE_HT_INFO: %d bytes\n",
>  					     info_element->len);
> -			tmp_htinfo_len = min(info_element->len, (u8)MAX_IE_LEN);
> +			tmp_htinfo_len = min_t(u8, info_element->len, MAX_IE_LEN);
>  			if (tmp_htinfo_len) {
>  				network->bssht.bdHTSpecVer = HT_SPEC_VER_IEEE;
>  				network->bssht.bdHTInfoLen = tmp_htinfo_len >
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4e1526d0654a77e3df0f924f3bad671243a11ba9.1425833758.git.darshanapadmadas%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

