X-GM-THRID: 6205479417229082624
X-Received: by 10.112.63.165 with SMTP id h5mr795494lbs.18.1444829206691;
        Wed, 14 Oct 2015 06:26:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.39.6 with SMTP id n6ls35755lfn.36.gmail; Wed, 14 Oct 2015
 06:26:46 -0700 (PDT)
X-Received: by 10.112.150.229 with SMTP id ul5mr800399lbb.2.1444829206092;
        Wed, 14 Oct 2015 06:26:46 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id q6si909128wif.2.2015.10.14.06.26.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 06:26:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id gb1so129827973wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 06:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=PlKeTvBoGpQDKSjf12b7eYo4iMR1MEGXY3yh+63xosk=;
        b=WL0furPBVwzLOtE5mrZoF5PCdeRiTwL/rj82aQVRG3AbTlhvaKb4D+3gWjv1j7tRmN
         5k1KOaw+gGeA/2pPIGnGBGJPudBPkqgsSIDUVe/iADk/yHeeLWECEOublUEopsiWLPee
         uS1vGw966oojNfnzgtAYD0daMSQfAY2f/OvSlODsRlfzXtIKQhnYk9JLsdMJ2fbH3EYd
         IB7Ajlwl2yuN0CdnpQ0BtpcpkkaxJfQw2hcHWC6t598ckm4HH+vKHQSXpb+LFfnTeGVF
         Gw/wLo4W3p1zxivNJhPPmB9HQjp+7mN/KDV0PUcZRqtw6YzK6ykp9Ynt2PtWPugg2ltd
         E6ew==
MIME-Version: 1.0
X-Received: by 10.180.206.52 with SMTP id ll20mr4279611wic.48.1444829190056;
 Wed, 14 Oct 2015 06:26:30 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 06:26:30 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510141443020.2421@hadrien>
References: <20151014122915.GA11874@ubuntu>
	<alpine.DEB.2.10.1510141443020.2421@hadrien>
Date: Wed, 14 Oct 2015 18:56:30 +0530
Message-ID: <CAKHNQQEhpWYgFRjEgtH5mHqVkwNvADRuos_5rgpOKROmxYXbjg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: rtl8712_xmit: Remove
 unnecessary cast
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 6:14 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>
>> Explicit typecasting of variables is not required and should be removed.
>> Semantic patch used:
>> @@
>> type T;
>> T e;
>> identifier x;
>> @@
>>
>> * T x = (T)e;
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/rtl8712/rtl8712_xmit.c | 14 +++++++-------
>>  1 file changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
>> index 86206d3..9e50bbf 100644
>> --- a/drivers/staging/rtl8712/rtl8712_xmit.c
>> +++ b/drivers/staging/rtl8712/rtl8712_xmit.c
>> @@ -96,7 +96,7 @@ static u32 get_ff_hwaddr(struct xmit_frame *pxmitframe)
>>       u32 addr = 0;
>>       struct pkt_attrib *pattrib = &pxmitframe->attrib;
>>       struct _adapter *padapter = pxmitframe->padapter;
>> -     struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
>> +     struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
>>
>>       if (pxmitframe->frame_tag == TXAGG_FRAMETAG)
>>               addr = RTL8712_DMA_H2CCMD;
>> @@ -237,7 +237,7 @@ void r8712_do_queue_select(struct _adapter *padapter,
>>                          struct pkt_attrib *pattrib)
>>  {
>>       unsigned int qsel = 0;
>> -     struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
>> +     struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
>>
>>       if (pdvobj->nr_endpoint == 6)
>>               qsel = (unsigned int) pattrib->priority;
>> @@ -374,8 +374,8 @@ u8 r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
>>                       struct xmit_frame *pxmitframe)
>>  {
>>       struct _adapter *padapter = pxmitframe->padapter;
>> -     struct dvobj_priv *pdvobj = (struct dvobj_priv *) &padapter->dvobjpriv;
>> -     struct tx_desc *ptxdesc = (struct tx_desc *)pxmitbuf->pbuf;
>> +     struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
>> +     struct tx_desc *ptxdesc   = pxmitbuf->pbuf;
>
> It looks like you have added some space before the =.  I don't think that
> is needed.  It wasn't lined up with the previous declaration before, and
> it's not lined up with the = on the next line either.
>
> julia
>

I'm fixing that.
Thanks.

>>       struct cmd_hdr *pcmd_hdr = (struct cmd_hdr *)
>>               (pxmitbuf->pbuf + TXDESC_SIZE);
>>       u16 total_length = (u16) (ptxdesc->txdw0 & 0xffff);
>> @@ -419,10 +419,10 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
>>       struct qos_priv *pqospriv = &pmlmepriv->qospriv;
>>       struct security_priv *psecuritypriv = &padapter->securitypriv;
>>       struct pkt_attrib *pattrib = &pxmitframe->attrib;
>> -     struct tx_desc *ptxdesc = (struct tx_desc *)pmem;
>> -     struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
>> +     struct tx_desc *ptxdesc    = (struct tx_desc *)pmem;
>> +     struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
>>  #ifdef CONFIG_R8712_TX_AGGR
>> -     struct cmd_priv *pcmdpriv = (struct cmd_priv *)&padapter->cmdpriv;
>> +     struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
>>  #endif
>>       u8 blnSetTxDescOffset;
>>       sint bmcst = IS_MCAST(pattrib->ra);
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014122915.GA11874%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

