X-GM-THRID: 6256048527740239872
X-Received: by 10.182.40.193 with SMTP id z1mr21825421obk.15.1456944582646;
        Wed, 02 Mar 2016 10:49:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.84 with SMTP id k81ls2126355iod.108.gmail; Wed, 02 Mar
 2016 10:49:42 -0800 (PST)
X-Received: by 10.66.63.104 with SMTP id f8mr22648151pas.4.1456944582221;
        Wed, 02 Mar 2016 10:49:42 -0800 (PST)
Return-Path: <bounce-md_30481620.56d735c5.v1-5857abd0847c4b89b4bfb795dd320eae@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id t198si2189378ywe.3.2016.03.02.10.49.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:49:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d735c5.v1-5857abd0847c4b89b4bfb795dd320eae@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d735c5.v1-5857abd0847c4b89b4bfb795dd320eae@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d735c5.v1-5857abd0847c4b89b4bfb795dd320eae@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=CcuFMidBy1/Dx4vHPpsHV7mvulE=;
 b=aolDXrxw4VKwYWfJOXn1mpWrhAJ7IucTjbBYq4Psr9Gmca5jOw566l5YibtDiFDTln54j2dvLZW7
   wBOw40SKfHYXid9JmG/Z0lRNjJgSonJEbT9aqAlD/s24+SYZ0xginIb5Dt0nLT5xF18SzLhgqRBI
   ZwwcvPiBNptzge9Yi60=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=Akz4rGq2R/Rn6TRvnGpaOUrvwQDdCw64PEl9gtVO+Irc4FbxBihUOO3xHXmNug/NKbNT6cSuaeNt
   elYhaHUb6qqSdy8jf5KivYjyuS7BNISQyzYdjuNsD674FDQ5QTL5Q2n6loZ8E7Ei1B7GVheW/7DR
   0C4TP3CBEnmDUt4n2G8=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqsc174nog for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:49:41 +0000 (envelope-from <bounce-md_30481620.56d735c5.v1-5857abd0847c4b89b4bfb795dd320eae@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944581; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=9Yrpa4ku3etvOxATVIP3XRgy8GQQdXzjkKDRbqf3qhA=; 
 b=ZdqxmpaXYWjgTvetBUKOkK2jiyaB7FkJjRoGso8FNbhOWB1CbQBJ+IR2yjpVJnaSPkJlSY
 6RqZbNuB4i1MuGunXsICp+EDVtDrJExh6bOnq+wCFbXbgBiKDUxtMrhIJejsr/LH6OMbDkG5
 YFGrJPxh49wbaXswT6uyHzEuXUrUE=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: ptlrpc: Use macro DIV_ROUND_UP
Return-Path: <bounce-md_30481620.56d735c5.v1-5857abd0847c4b89b4bfb795dd320eae@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 5857abd0847c4b89b4bfb795dd320eae; Wed, 02 Mar 2016 18:49:41 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302032718.GA7689@kroah.com>
References: <20160227190036.GA3598@Karyakshetra>
In-Reply-To: <20160227190036.GA3598@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.5857abd0847c4b89b4bfb795dd320eae
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:49:41 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 28, 2016 at 12:30:36AM +0530, Bhaktipriya Shridhar wrote:
> The macro DIV_ROUND_UP performs the computation
> (((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
> This was done using the coccinelle script:
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed typo "lusture" to "lustre" in the subject

Please pick better subjects, you use pretty much the same thing twice
here :(

