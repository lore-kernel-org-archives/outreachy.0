X-GM-THRID: 6950041128990146560
X-Received: by 2002:a05:6512:1052:: with SMTP id c18mr12040836lfb.384.1618299618323;
        Tue, 13 Apr 2021 00:40:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:5081:: with SMTP id f1ls2153795lfm.2.gmail; Tue, 13 Apr
 2021 00:40:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwArwXxyfUiWCPaaVleqDJ04XfNAMM9ykTt3Y3eMZcNF4vgwtc5SRCk6JtjwXU4oRmuKaOP
X-Received: by 2002:a05:6512:34cc:: with SMTP id w12mr23158081lfr.430.1618299616630;
        Tue, 13 Apr 2021 00:40:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618299616; cv=none;
        d=google.com; s=arc-20160816;
        b=kogPTO6GSGL1q8ixpFO1EbaqDV4ghtFP2uQMrIgil/oINFwjVtu49Y+1pk8Zjy5oR5
         fFLULNj+INHZHhrOjQaXmdFENAEkfSv0rEuNja2pCjTGjK/8D1G9TjCIHS+Z7uG5yTD7
         NPrQSAf1uCFZaqRQUdyPIv8snPSAfSMBTYhrgVm+OrWhkCwft3DtNik3iYN5KQM/ytwB
         NBnP927/mzj66/wZW/neNFrxSzK0ecbRrg9moXDUnwgHU/PUHiejgy6+/Au0C9mBcYNx
         LzddJwfZ96IxsaJVwDha26LEUr8B63X/KB/dqZFbAdrkONRyMlxp2DlqHRIIENvoDTZo
         USHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=sELJZQY0YFNC1uCZNwX+4i26od38JWz4si43OLQ5uiw=;
        b=a6e7eVlv3h+63Uqjggu9U6MXloQZTpzE7m16cRPyb2pb9DaVXF1m3ESImyB+YeaSNX
         S9pnjRIYoFvJd7gI6i2MWmC3GqN49Se4azhVR28wg49634uu36V32uQs9OtN+vFBdQ1H
         oDnmf21O3NyEgPyaJO1uxeWeMnMKWtKF/sKCsZoB9wyIW4QNS15MQwxumyuiTMPXKqZ6
         ymSEfOEHz+eIL5HTbwkfu9yQnEHdAVQ0+5O1C20jK60ALUApXxcIo4VphMBWSiiCDLS3
         kTvD3i2ZmgW+Pn2vnhJeKYWzL3ndzR+AO4ogyxmcJednWXV6I0kubRC0NsnzO1wmNXtm
         XZ3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Return-Path: <david.laight@aculab.com>
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id z2si660020ljm.0.2021.04.13.00.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 00:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-221-ecZ__soQOzqGJyvfJqYHXQ-1; Tue, 13 Apr 2021 08:40:13 +0100
X-MC-Unique: ecZ__soQOzqGJyvfJqYHXQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Tue, 13 Apr 2021 08:40:12 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Tue, 13 Apr 2021 08:40:12 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Mitali Borkar' <mitaliborkar810@gmail.com>,
	"sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
	"bingbu.cao@intel.com" <bingbu.cao@intel.com>, "tian.shu.qiu@intel.com"
	<tian.shu.qiu@intel.com>, "mchehab@kernel.org" <mchehab@kernel.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
CC: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"mitali_s@me.iitr.ac.in" <mitali_s@me.iitr.ac.in>
Subject: RE: [PATCH 2/6] staging: media: intel-ipu3: preferred __aligned(size)
 over __attribute__aligned(size)
Thread-Topic: [PATCH 2/6] staging: media: intel-ipu3: preferred
 __aligned(size) over __attribute__aligned(size)
Thread-Index: AQHXLyewN18t7A08NkSuo10kWluH2aqyET/A
Date: Tue, 13 Apr 2021 07:40:12 +0000
Message-ID: <277be5f4da82449aaf0a635b60ad0728@AcuMS.aculab.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <f618f1fe2d13417ebed185da392fb48811593a9f.1618180660.git.mitaliborkar810@gmail.com>
In-Reply-To: <f618f1fe2d13417ebed185da392fb48811593a9f.1618180660.git.mitaliborkar810@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

From: Mitali Borkar
> Sent: 12 April 2021 00:09
>=20
> This patch fixes the warning identified by checkpatch.pl by replacing
> __attribute__aligned(size) with __aligned(size)
>=20
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  .../staging/media/ipu3/include/intel-ipu3.h   | 74 +++++++++----------
>  1 file changed, 37 insertions(+), 37 deletions(-)
>=20
> diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h
> b/drivers/staging/media/ipu3/include/intel-ipu3.h
> index 589d5ccee3a7..d95ca9ebfafb 100644
> --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> @@ -84,7 +84,7 @@ struct ipu3_uapi_grid_config {
>   */
>  struct ipu3_uapi_awb_raw_buffer {
>  =09__u8 meta_data[IPU3_UAPI_AWB_MAX_BUFFER_SIZE]
> -=09=09__attribute__((aligned(32)));
> +=09=09__aligned(32);
>  } __packed;

WTF?

It either has 1-byte alignment because it is just __u8,
32-byte because of the aligned(32),
or 1 byte because of the outer packed.

What alignment does this (and all the other) structures
actually need?

Specifying 'packed' isn't free.

=09David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)


