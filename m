X-GM-THRID: 6751148085003419648
X-Received: by 2002:a67:d110:: with SMTP id u16mr8757150vsi.157.1571909919580;
        Thu, 24 Oct 2019 02:38:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:e28c:: with SMTP id g12ls536755vsf.11.gmail; Thu, 24 Oct
 2019 02:38:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwC4rn8T36AefCqx8PUP+Q+TiNousYScacOvknnABUmAKeODS5ZB2S3wjbfDl9wUn5/Ae8x
X-Received: by 2002:a67:e88b:: with SMTP id x11mr8123411vsn.180.1571909918701;
        Thu, 24 Oct 2019 02:38:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571909918; cv=none;
        d=google.com; s=arc-20160816;
        b=MAJ3IbrvzWQcmibVPf3RzRMSrl5hnXKJyRmkSz6O+JdROgWgg8NVhoKOxDndRtt2ZG
         4i7OemH7PMJIYBAkqz8H5nzxNvKdbvyiO1Z15xKaFSMobxyDuxsKNu02J//8VkLGSmGR
         /lbT+DtA7fheHcpd2YyYY/qkJfv6CP8DLl8N6gUjp6+I9mK+jsr+JaGOr6b25JKuLNrZ
         CLBc9Oo1VdwgEQsMkdfYWknSlpvsfn93yZrEUMXMBldWEzu0PVjpA5eAPVo0BHqVZLkX
         t4P9huqQaWq/BugAvI/VSiLJbAMYYRp6Y0koMSmrnGO/VO/wFgP+Z6Q7pg/4VUevd/2Q
         7P5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature:dkim-signature;
        bh=mamPuPS+jM9tMes2KVttPFcQXhhHu2kx4J2jmh2xWcM=;
        b=jfs05vo03WODwGvLuKlXxI1gzW/0u7XUGrJRNT1R6XH0sFav9/FJJWbOV6+XKP2Nwu
         31RwxLvHreD5VUbSKMAhI5q5te2N4UpsdfnDtN7zAHQ1fE9d6Y6QJUvH8EAQNl8iGvf2
         PXH3QcKI6TS7u1ZDalBqe2aNV0fk84/lm6LqIYxJTFPmiRuTLtd3IFTo5bqsInxUpzAk
         52+c0TszwqNyywMOCoyTrr/CT0XElqFqI664AUNZ9cQ8Ek1lbBND/EirsVP+Z1ZW0Q4J
         b43AxuzWA1BwQYjm7Yfx4Fs5jKOMyDfrhGrxSBKICvwcXf+s8NPKRTKWPKb4GekcS80a
         2h3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=DJkYo+nI;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=JHiuBGwJ;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.127 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp127.iad3a.emailsrvr.com (smtp127.iad3a.emailsrvr.com. [173.203.187.127])
        by gmr-mx.google.com with ESMTPS id o206si746238vka.4.2019.10.24.02.38.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 02:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.127 as permitted sender) client-ip=173.203.187.127;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@g001.emailsrvr.com header.s=20190322-9u7zjiwi header.b=DJkYo+nI;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=JHiuBGwJ;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.127 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
	s=20190322-9u7zjiwi; t=1571909918;
	bh=gxUyk2hSGsz+eqle522ChdBpiepJI6IERqiSpy3soeA=;
	h=Subject:To:From:Date:From;
	b=DJkYo+nIVZT5RxaiNFiYz0lunv7WIr3jhnnaE9frO5eU9/wRYUMsxnOkWUur0++TR
	 K2Q0FzNlAH2G5ZwLVIZjvY9pK7iDshMA1CtstMLumzigFAhc0odnFrdkRlvyQGWV2F
	 5aFCLJwn+37A89aOTMBVyrCauacup8V1onkDtkpk=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1571909918;
	bh=gxUyk2hSGsz+eqle522ChdBpiepJI6IERqiSpy3soeA=;
	h=Subject:To:From:Date:From;
	b=JHiuBGwJNvcxst9YT/PoMb88vBJiikYYjBTJzvrzOeTSNFkJIcCmkoRH2kVKCfBe3
	 AW11/6oRLsG7eXrcnFzeHnHdNG4O0N68DLdxrA1Z7CNXM3pFeDEttJaZcEgHDrp0DP
	 EOhOG41YvhaNi2ZFaCX8wBhhcACutA4iXZh6EqXU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp16.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id B085A447E;
	Thu, 24 Oct 2019 05:38:37 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
	(using TLSv1.2 with cipher AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12);
	Thu, 24 Oct 2019 05:38:38 -0400
Subject: Re: [PATCH 1/7] Staging: comedi: Remove wrapper function declarartion
To: Evan Chime <chime.evan.dri.devel@gmail.com>, gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, outreachy-kernel@googlegroups.com
References: <20191023234230.GA4485@ik-ubuntu>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <b4d518c4-602a-9db3-4370-e26dfb780637@mev.co.uk>
Date: Thu, 24 Oct 2019 10:38:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023234230.GA4485@ik-ubuntu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 24/10/2019 00:42, Evan Chime wrote:
> Remove wrapper function "comedi_buf_map_get" declaration
> as part of remove all wrappers in drivers/staging/comedi/TODO
> 
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>   drivers/staging/comedi/comedi_internal.h | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/comedi_internal.h b/drivers/staging/comedi/comedi_internal.h
> index 515f293a5d26..df3b1af109f7 100644
> --- a/drivers/staging/comedi/comedi_internal.h
> +++ b/drivers/staging/comedi/comedi_internal.h
> @@ -28,7 +28,6 @@ int comedi_buf_alloc(struct comedi_device *dev, struct comedi_subdevice *s,
>   		     unsigned long new_size);
>   void comedi_buf_reset(struct comedi_subdevice *s);
>   bool comedi_buf_is_mmapped(struct comedi_subdevice *s);
> -void comedi_buf_map_get(struct comedi_buf_map *bm);
>   int comedi_buf_map_put(struct comedi_buf_map *bm);
>   int comedi_buf_map_access(struct comedi_buf_map *bm, unsigned long offset,
>   			  void *buf, int len, int write);
> 

Sorry, I don't really see the point of this patch series.  For a start, 
the comedi_buf_map functions were added a long time after the TODO file 
was written.  I can't even remember what the "remove all wrappers" line 
in the TODO file is referring to.

Besides that, as pointed out by Julia, the patches have been ordered in 
such a way as to break the build between the patches.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

