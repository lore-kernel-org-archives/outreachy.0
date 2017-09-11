X-GM-THRID: 6463854288984604672
X-Received: by 10.31.170.201 with SMTP id t192mr7230987vke.11.1505148845238;
        Mon, 11 Sep 2017 09:54:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.192.71 with SMTP id q68ls4292647iof.54.gmail; Mon, 11 Sep
 2017 09:54:04 -0700 (PDT)
X-Received: by 10.13.231.196 with SMTP id q187mr7944282ywe.62.1505148844379;
        Mon, 11 Sep 2017 09:54:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505148844; cv=none;
        d=google.com; s=arc-20160816;
        b=fTBNBCeGNbHioaGHIMRscfASNCg2SthNgy3u1oqLutBy5FyhL+x5aYn4n/fp+FuJ52
         N3QyG6txig5oVzEc41HrKBiZajJbK9PHYGYMbG000FKTTD/xhydPHHVqzS72FkM3/DDb
         KZcHu19bdB/6LAz3Xxg/EojrRGsWJ/gbLvb+GhmxBR0oElnTHVTOLaEjWny/Bt3NPX3v
         RJo3StBSnxYLnZ2dPbfawfJmVcibhE0UYqLwY3WxXU31XubYvxfUXj9lAvYZYFIf5qgi
         1i1zhukOVjW96vNG/Z+xxmp0XjB0e/FyFKKHQIeSABf5Fo0Vb9mIu7L6GEBEXbgQL1Fv
         LRCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature
         :arc-authentication-results;
        bh=N3w9SEtqhzWxVBXutujA9jqVOCQ9dBbPD4F05adQvyk=;
        b=ZTUKmsJFZLugUpsiuBvheYyv/PBIETueeOcxdqQlqyI2x+RgNgTep5hExP9w2mp4jn
         SqhLo8gzt4Ele8vlKAD6UDf/dyj6ofqe3xB0H1Ja1Tc2xCtFKm1SCaJUepHQjrVFHYpm
         i48F8P2yq+U3caZFWvayJvIvo4wg4b7ZYmVaCsKKaqpywb55Pne9nth70Vj/xbegYMoo
         lfh6xEmMaV3EQRlMRrAAxOp4J717quoy1prZHZeoTZJXGyxThxIBHDoFxJuA7vS7X42J
         yIZ8byf6ANIul967XoUbZVHIf4HEkR5qWhYJ4/zp37WdZxBZamA8/vF/AWPoIB+E8NMC
         EDqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LDxWiUs4;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id b2si514526itg.3.2017.09.11.09.54.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:54:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LDxWiUs4;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id f84so5133830pfj.3
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=N3w9SEtqhzWxVBXutujA9jqVOCQ9dBbPD4F05adQvyk=;
        b=LDxWiUs4Yg0e+n/CxEa8/BNsQTk/oRK3in5PzVbyGFElJ2d09lbNkWLHhxPD9ZeDUb
         FkiyXa+goaqhKnB2ZAMscfnMNVyaiADpx3Ixpno3+YRrMqDjFvg7BksFy/OB090+4pmc
         rxTmPJCCD74L8KGDWZwq9PXW9yw51Le4+M8ObUDd2tpBLvvsiAQigbgyojq1bWF+TauL
         dtiioqH9Wsp6IOmjWckC6SESJ5CuYOhwUgGb4/aVS260kDPUBeFtlYS2pYQUDbYSnvtm
         2hCZ3K3MUxAlCJMI0KeFFdpTADetwKjF233wvrBDg/ru7X/Eo8Tcx7rUJlgrG3TdX82k
         TZQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=N3w9SEtqhzWxVBXutujA9jqVOCQ9dBbPD4F05adQvyk=;
        b=eT7KrYbCXl3dInKpwocvRQq4JMQLKk6riOI4hUGwQO11bCOCzZPRyQHV5FmAUBSBod
         Fd5gmcm1WdnL0ARINKVkw8o9OglpJswEgWsnWpLF8RDA1OwELciMrft8BNTY7nHIUWHI
         kqVxO50uNSdEGWU6TA2sjplPeJowgvMFRh+gkUFYjwj0fOk+f8sX3p0akvbTtBSQYIbW
         oOvVc1UQ0cwcJDBa4vIvmb5S7NP2zxDk1b4/aBtge/jbUo/OX2de3I1A/TsDfM0bc6i0
         mLHWDh2khgFsfmBkwqpu+m0yoe/7LA0wBqjhfyxeb1kRafExKJx3j4NJRR89qjL5f+C7
         j9Rg==
X-Gm-Message-State: AHPjjUjX1wyysRpX/UA4Ai/ua1ioM54eiCiR4Jq7hYpYWvzn+Q3zvDbu
	xWpnnKL0Z7pBGU9Hjuo=
X-Google-Smtp-Source: ADKCNb52tXHy46ytecasW+tj/O5Cm3JNcMKRBfS3ZftRi/17KNeJ3fX/ASvv0bFUyKc3ZiFUohyP/w==
X-Received: by 10.101.67.200 with SMTP id n8mr12833567pgp.315.1505148843518;
        Mon, 11 Sep 2017 09:54:03 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id i2sm17534290pfd.21.2017.09.11.09.54.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:54:02 -0700 (PDT)
Subject: Re: [PATCH v4] Staging: rtlwifi: Remove unnecessary 'out of memory'
 message.
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
 <20170911163210.GA26981@kroah.com>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
Date: Mon, 11 Sep 2017 21:48:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170911163210.GA26981@kroah.com>
Content-Type: multipart/alternative;
 boundary="------------7520996C0129A9AB93B81D6E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7520996C0129A9AB93B81D6E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On Monday 11 September 2017 10:02 PM, Greg KH wrote:
> On Sun, Sep 10, 2017 at 03:10:05PM +0530, Shreeya Patel wrote:
>> Logging messages that show some type of 'out of memory' error
>> are generally unnecessary as there is a generic message and
>> a stack dump done by the memory subsystem.
>>
>> These messages generally increase kernel size without much
>> added value.
>>
>> Problem found by checkpatch.
>>
>> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
>> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>> ---
>>
>> Changes in v4:
>>    -Include v2 and v3 in the patch.
>>
>> Changes in v3:
>>    -Make the commit message more appropriate.
>>
>> changes in v2:
>>    -Original patch was not sent to the mailing list.
>>     Also, add a tab before the return statement.
>>
>>   drivers/staging/rtlwifi/rc.c | 4 +---
>>   1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
>> index 65de0c7..779a5c6 100644
>> --- a/drivers/staging/rtlwifi/rc.c
>> +++ b/drivers/staging/rtlwifi/rc.c
>> @@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
>> 	struct rtl_rate_priv *rate_priv;
>>
>> 	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
>> -	if (!rate_priv) {
>> -		pr_err("Unable to allocate private rc structure\n");
>> +	if (!rate_priv)
>> 		return NULL;
>> -	}
>>
>> 	rtlpriv->rate_priv = rate_priv;
>>
> This patch is sent corrupted (leading space is gone), and git doesn't
> like it.  Can you please fix it up and resend?
>
> thanks,
>
> greg k-h

Hello sir,

If i am not removing the leading spaces then checkpatch is showing me 
errors for trailing whitespace.
But there are no leading spaces present in the file which i have modified.
When i convert my changes into the patch, the whitespace errors are 
shown up.
Can you please help me with this to make me understand why this is 
happening?



--------------7520996C0129A9AB93B81D6E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On Monday 11 September 2017 10:02 PM,
      Greg KH wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20170911163210.GA26981@kroah.com">
      <pre wrap="">On Sun, Sep 10, 2017 at 03:10:05PM +0530, Shreeya Patel wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Logging messages that show some type of 'out of memory' error
are generally unnecessary as there is a generic message and
a stack dump done by the memory subsystem.

These messages generally increase kernel size without much
added value.

Problem found by checkpatch.

Signed-off-by: Shreeya Patel <a class="moz-txt-link-rfc2396E" href="mailto:shreeya.patel23498@gmail.com">&lt;shreeya.patel23498@gmail.com&gt;</a>
Acked-by: Julia Lawall <a class="moz-txt-link-rfc2396E" href="mailto:julia.lawall@lip6.fr">&lt;julia.lawall@lip6.fr&gt;</a>
---

Changes in v4:
  -Include v2 and v3 in the patch.

Changes in v3:
  -Make the commit message more appropriate.

changes in v2:
  -Original patch was not sent to the mailing list.
   Also, add a tab before the return statement.

 drivers/staging/rtlwifi/rc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
index 65de0c7..779a5c6 100644
--- a/drivers/staging/rtlwifi/rc.c
+++ b/drivers/staging/rtlwifi/rc.c
@@ -281,10 +281,8 @@ static void *rtl_rate_alloc_sta(void *ppriv,
	struct rtl_rate_priv *rate_priv;

	rate_priv = kzalloc(sizeof(*rate_priv), gfp);
-	if (!rate_priv) {
-		pr_err("Unable to allocate private rc structure\n");
+	if (!rate_priv)
		return NULL;
-	}

	rtlpriv-&gt;rate_priv = rate_priv;

</pre>
      </blockquote>
      <pre wrap="">
This patch is sent corrupted (leading space is gone), and git doesn't
like it.  Can you please fix it up and resend?

thanks,

greg k-h
</pre>
    </blockquote>
    <font size="-1"><br>
      Hello sir,<br>
      <br>
      If i am not removing the leading spaces then checkpatch is showing
      me errors for trailing whitespace.<br>
      But there are no leading spaces present in the file which i have
      modified.<br>
      When i convert my changes into the patch, the whitespace errors
      are shown up. <br>
      Can you please help me with this to make me understand why this is
      happening?<br>
    </font><br>
    <br>
  </body>
</html>

--------------7520996C0129A9AB93B81D6E--

