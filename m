X-GM-THRID: 6332940670748065792
X-Received: by 10.25.141.85 with SMTP id p82mr18759lfd.10.1474524566324;
        Wed, 21 Sep 2016 23:09:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.219 with SMTP id h88ls1191824lji.46.gmail; Wed, 21 Sep
 2016 23:09:25 -0700 (PDT)
X-Received: by 10.25.162.18 with SMTP id l18mr17735lfe.14.1474524565689;
        Wed, 21 Sep 2016 23:09:25 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si3370534wmd.1.2016.09.21.23.09.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 23:09:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,377,1470693600"; 
   d="scan'208";a="237799677"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Sep 2016 08:09:25 +0200
Date: Thu, 22 Sep 2016 08:09:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Remove spaces
 between casts
In-Reply-To: <20160922000408.GA28701@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.10.1609220808520.3472@hadrien>
References: <20160922000408.GA28701@katie-Inspiron-5748>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Actually, the spaces are after the casts.  Between casts would be

(int) (u32)x;

julia

On Wed, 21 Sep 2016, Katie Dunne wrote:

> Issue found by checkpatch.
>
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/wlan-ng/prism2fw.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
> index 13f90b7..e2fba30 100644
> --- a/drivers/staging/wlan-ng/prism2fw.c
> +++ b/drivers/staging/wlan-ng/prism2fw.c
> @@ -268,7 +268,7 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
>
>  	/* clear the pda and add an initial END record */
>  	memset(&pda, 0, sizeof(pda));
> -	pda.rec[0] = (hfa384x_pdrec_t *) pda.buf;
> +	pda.rec[0] = (hfa384x_pdrec_t *)pda.buf;
>  	pda.rec[0]->len = cpu_to_le16(2);	/* len in words */
>  	pda.rec[0]->code = cpu_to_le16(HFA384x_PDR_END_OF_PDA);
>  	pda.nrec = 1;
> @@ -295,11 +295,11 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
>  	getmsg.resultcode.did = DIDmsg_dot11req_mibget_resultcode;
>  	getmsg.resultcode.status = P80211ENUM_msgitem_status_no_value;
>
> -	item = (p80211itemd_t *) getmsg.mibattribute.data;
> +	item = (p80211itemd_t *)getmsg.mibattribute.data;
>  	item->did = DIDmib_p2_p2NIC_p2PRISupRange;
>  	item->status = P80211ENUM_msgitem_status_no_value;
>
> -	data = (u32 *) item->data;
> +	data = (u32 *)item->data;
>
>  	/* DIDmsg_dot11req_mibget */
>  	prism2mgmt_mibset_mibget(wlandev, &getmsg);
> @@ -594,14 +594,14 @@ static int mkimage(struct imgchunk *clist, unsigned int *ccnt)
>  ----------------------------------------------------------------*/
>  static int mkpdrlist(struct pda *pda)
>  {
> -	u16 *pda16 = (u16 *) pda->buf;
> +	u16 *pda16 = (u16 *)pda->buf;
>  	int curroff;		/* in 'words' */
>
>  	pda->nrec = 0;
>  	curroff = 0;
>  	while (curroff < (HFA384x_PDA_LEN_MAX / 2 - 1) &&
>  	       le16_to_cpu(pda16[curroff + 1]) != HFA384x_PDR_END_OF_PDA) {
> -		pda->rec[pda->nrec] = (hfa384x_pdrec_t *) &(pda16[curroff]);
> +		pda->rec[pda->nrec] = (hfa384x_pdrec_t *)&(pda16[curroff]);
>
>  		if (le16_to_cpu(pda->rec[pda->nrec]->code) ==
>  		    HFA384x_PDR_NICID) {
> @@ -640,7 +640,7 @@ static int mkpdrlist(struct pda *pda)
>  		       curroff, pda->nrec);
>  		return 1;
>  	}
> -	pda->rec[pda->nrec] = (hfa384x_pdrec_t *) &(pda16[curroff]);
> +	pda->rec[pda->nrec] = (hfa384x_pdrec_t *)&(pda16[curroff]);
>  	(pda->nrec)++;
>  	return 0;
>  }
> @@ -882,8 +882,8 @@ static int read_fwfile(const struct ihex_binrec *record)
>  		addr = be32_to_cpu(record->addr);
>
>  		/* Point into data for different word lengths */
> -		ptr32 = (u32 *) record->data;
> -		ptr16 = (u16 *) record->data;
> +		ptr32 = (u32 *)record->data;
> +		ptr16 = (u16 *)record->data;
>
>  		/* parse what was an S3 srec and put it in the right array */
>  		switch (addr) {
> @@ -957,7 +957,7 @@ static int read_fwfile(const struct ihex_binrec *record)
>  		default:	/* Data record */
>  			s3data[ns3data].addr = addr;
>  			s3data[ns3data].len = len;
> -			s3data[ns3data].data = (uint8_t *) record->data;
> +			s3data[ns3data].data = (uint8_t *)record->data;
>  			ns3data++;
>  			if (ns3data == S3DATA_MAX) {
>  				pr_err("S3 datarec limit reached - aborting\n");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160922000408.GA28701%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
>

