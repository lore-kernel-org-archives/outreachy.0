X-GM-THRID: 6210381585761435648
X-Received: by 10.180.102.162 with SMTP id fp2mr370923wib.4.1446024540877;
        Wed, 28 Oct 2015 02:29:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.198 with SMTP id cg6ls697914wib.37.canary; Wed, 28 Oct
 2015 02:29:00 -0700 (PDT)
X-Received: by 10.28.7.78 with SMTP id 75mr183503wmh.6.1446024540353;
        Wed, 28 Oct 2015 02:29:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id en3si650047wib.3.2015.10.28.02.29.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 02:29:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,209,1444687200"; 
   d="scan'208";a="184805828"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Oct 2015 10:29:00 +0100
Date: Wed, 28 Oct 2015 10:28:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8188eu: core: Remove
 wrapper function
In-Reply-To: <fd49b1325d024358440e5df7b74fd18bc252cdb4.1445966850.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.10.1510281027490.2456@hadrien>
References: <cover.1445966850.git.amitoj1606@gmail.com> <fd49b1325d024358440e5df7b74fd18bc252cdb4.1445966850.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 27 Oct 2015, Amitoj Kaur Chawla wrote:

> Remove wrapper function that can be replaced by a single line of code.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 24 +++++++++---------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 0270755..fec9ce1 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -701,12 +701,6 @@ exit:
>  	return ret;
>  }
>
> -static inline void issue_probereq(struct adapter *padapter,
> -				  struct ndis_802_11_ssid *pssid, u8 *da)
> -{
> -	_issue_probereq(padapter, pssid, da, false);
> -}

If issue_probereq is not going to be used, then maybe _issue_probereq
should be renamed as issue_probereq?  Is _issue_probereq actually ever
called with something other than false as the last argument?

julia

>  static int issue_probereq_ex(struct adapter *padapter,
>  			     struct ndis_802_11_ssid *pssid, u8 *da,
>  			     int try_cnt, int wait_ms)
> @@ -2029,24 +2023,24 @@ static void site_survey(struct adapter *padapter)
>  			for (i = 0; i < RTW_SSID_SCAN_AMOUNT; i++) {
>  				if (pmlmeext->sitesurvey_res.ssid[i].SsidLength) {
>  					/* todo: to issue two probe req??? */
> -					issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL);
> +					_issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL, false);
>  					/* msleep(SURVEY_TO>>1); */
> -					issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL);
> +					_issue_probereq(padapter, &(pmlmeext->sitesurvey_res.ssid[i]), NULL, false);
>  				}
>  			}
>
>  			if (pmlmeext->sitesurvey_res.scan_mode == SCAN_ACTIVE) {
>  				/* todo: to issue two probe req??? */
> -				issue_probereq(padapter, NULL, NULL);
> +				_issue_probereq(padapter, NULL, NULL, false);
>  				/* msleep(SURVEY_TO>>1); */
> -				issue_probereq(padapter, NULL, NULL);
> +				_issue_probereq(padapter, NULL, NULL, false);
>  			}
>
>  			if (pmlmeext->sitesurvey_res.scan_mode == SCAN_ACTIVE) {
>  				/* todo: to issue two probe req??? */
> -				issue_probereq(padapter, NULL, NULL);
> +				_issue_probereq(padapter, NULL, NULL, false);
>  				/* msleep(SURVEY_TO>>1); */
> -				issue_probereq(padapter, NULL, NULL);
> +				_issue_probereq(padapter, NULL, NULL, false);
>  			}
>  		}
>
> @@ -4820,9 +4814,9 @@ void linked_status_chk(struct adapter *padapter)
>  			} else {
>  				if (rx_chk != _SUCCESS) {
>  					if (pmlmeext->retry == 0) {
> -						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
> -						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
> -						issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress);
> +						_issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress, false);
> +						_issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress, false);
> +						_issue_probereq(padapter, &pmlmeinfo->network.Ssid, pmlmeinfo->network.MacAddress, false);
>  					}
>  				}
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/fd49b1325d024358440e5df7b74fd18bc252cdb4.1445966850.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

