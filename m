X-GM-THRID: 6463854288984604672
X-Received: by 10.13.214.69 with SMTP id y66mr8143352ywd.119.1505149504403;
        Mon, 11 Sep 2017 10:05:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.147 with SMTP id e141ls5798051ite.1.gmail; Mon, 11 Sep
 2017 10:05:03 -0700 (PDT)
X-Received: by 10.129.49.77 with SMTP id x74mr7808374ywx.158.1505149503599;
        Mon, 11 Sep 2017 10:05:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505149503; cv=none;
        d=google.com; s=arc-20160816;
        b=LGbWB6p0604C+HT97pRplvDmFOpSxjuOWlYSaQLO3DbEJCfrhWIOA0rj2+7KQ3Se/v
         N3sDoRqN8jmkgQWukeHEJKhknFfxXbqfg1UplyhUk5aK/dqcIyDChh7VTGB8ijdh610t
         Ie5G4CbI6j1Q1rCNKkVUpk5r+qNgVQ8B1oiF4sLHmo/QNqbjPzske1/uMLSolwOBOo+W
         CYg5baDKoh9bvMuD3LOjl7QIbhmE4Qr0kwuBeQe8Jw+yDGvmkYb1wAZJrg5Ui8Q9xJGa
         SRxKu+T2fvYe3njxT/SLsZtd+lelKjBMfjowbtZY73p+kEXeGDsWqvl69VmpgOvUTD0e
         3VAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature
         :arc-authentication-results;
        bh=RjDmeY5u2PTkvzu5abGSC7rinEDHWKidmrPOKd1X9S0=;
        b=r9IitpHdx8C1z9UIlKDRw+Eg4RI++NIcPG6b9CoHHz7GccVvicwKUsr+UFuuoyouEi
         EtuVpWSuX283fX2gX/FMwtKGuhO15YPBYSsx5WMYH7ZYQLurPav280WX9dRr2Lx8d8IW
         6Gal+KE0mfAzn+FADxRiGe/H0Ww0GtCPN8sPCu3UIoJFMpERM2zFvFLTJRK/QLHORunL
         ozwjILYV+3Xp3l1CdIHwmGE5/x7TbbkFylb6lVnZtQyySy7Jx4pwNVr74qkkquR2Fhcg
         KhQju147JaIjqce79hx3TpdGmu19IDxEv6ixoN10UYnRkUHLCxzXb6wjEvNM3ZNbktx1
         EQqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cHZ+MFb2;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a12si903848pfd.2.2017.09.11.10.05.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cHZ+MFb2;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v82so4906386pgb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=RjDmeY5u2PTkvzu5abGSC7rinEDHWKidmrPOKd1X9S0=;
        b=cHZ+MFb2DV/rOzyAw31hOq/MTSKVICY2iYDL8SXJbwHqq+MLbM5LjUp6rc+mVY9Mbb
         krj7rF3jGVO2hwKne28yo8yorGuCNbEpg5lKAUs7++z/9up4GUHcIfgaXxlOUg5sqpHP
         55oKUqUc/hgyJCAwQpe+O9dprr1bsDWloxXOVLz9e2jonBhDD2s9yFRFnIJ+msnCPtxV
         I0/u3O8ZLNZrgp/tHzoRdhmTRZYNCizl3fX7ZBWBDoYyh1ElszV6kUeg3zJ5Z+4iU4hl
         alzacZlNhSfJ2BdB+0U5R2ZcjSawZyCMS3Oe9Z3Bdh0n79g/O2FqZXY3aL+AAyCapxOW
         Z96g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=RjDmeY5u2PTkvzu5abGSC7rinEDHWKidmrPOKd1X9S0=;
        b=T7VFDAyAq4oiW8mxGgSaOYqfySdm6Z3Y5k9bDpPIMxcxKmNFkkG4hQ13C+QDXSzzLl
         vleWPcOLt/Z3lclwLO/N6fVvgdCZR/mQnZNl7WjZ9EpyW0434whiFE6uqshpKQxyyEra
         /QjmQr6TLbT8zKFLyFAlwIsja4hQu78mortc7eINNiS/8HS75PmIPtaJ/bxALCwgwjCh
         0WcfdPxGZpjSSGRPIVXXj90zg+EXhg+ycYtwo6x5+hO8BI7e585A7f6iQo/Z09lLyX4s
         T98x7YmQeMKEf9cqSmoqSzLhkWJgeOrGnb900Stzy9yqN3vOlgDoqqqohp3UiqD0gPYV
         VPMg==
X-Gm-Message-State: AHPjjUhvmUZjhgB/jv/KKpxy/TjGzqYELl5VsKd+N+mCpaKudThmuEU0
	1m5bnuatt50gSeeh7Gs=
X-Google-Smtp-Source: ADKCNb5Z1mPAXh2jpgIr1FQC+drfMycqrb4YVFAxdTF/WF1b4dDaE9TyGRQTuN8aRkvVDofBCP4r+A==
X-Received: by 10.84.218.7 with SMTP id q7mr14413491pli.111.1505149503128;
        Mon, 11 Sep 2017 10:05:03 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from [10.0.2.15] ([45.113.152.93])
        by smtp.gmail.com with ESMTPSA id n19sm17876664pfj.114.2017.09.11.10.05.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:05:02 -0700 (PDT)
Subject: Re: [Outreachy kernel] Re: [PATCH v4] Staging: rtlwifi: Remove
 unnecessary 'out of memory' message.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
References: <1505036405-3702-1-git-send-email-shreeya.patel23498@gmail.com>
 <20170911163210.GA26981@kroah.com>
 <6e7b1bf6-89b9-a40e-4a67-af79312b12a7@gmail.com>
 <alpine.DEB.2.20.1709111900220.16190@hadrien>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <6ac72deb-edd6-1026-a2e9-df6ea871b3af@gmail.com>
Date: Mon, 11 Sep 2017 22:34:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1709111900220.16190@hadrien>
Content-Type: multipart/alternative;
 boundary="------------6AD5E55815977003AE56AA9F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6AD5E55815977003AE56AA9F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On Monday 11 September 2017 10:31 PM, Julia Lawall wrote:
>
> On Mon, 11 Sep 2017, Shreeya Patel wrote:
>
>>
>>
>> On Monday 11 September 2017 10:02 PM, Greg KH wrote:
>>
>> On Sun, Sep 10, 2017 at 03:10:05PM +0530, Shreeya Patel wrote:
>>
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
>> This patch is sent corrupted (leading space is gone), and git doesn't
>> like it.  Can you please fix it up and resend?
>>
>> thanks,
>>
>> greg k-h
>>
>>
>> Hello sir,
>>
>> If i am not removing the leading spaces then checkpatch is showing me errors
>> for trailing whitespace.
> Maybe you are not using checkpatch properly?  What is your command line?
>
> julia
perl scripts/checkpatch.pl -f 
/tmp/0001-Staging-rtlwifi-Remove-unnecessary-out-of-memory-mes.patch


>
>> But there are no leading spaces present in the file which i have modified.
>> When i convert my changes into the patch, the whitespace errors are shown
>> up.
>> Can you please help me with this to make me understand why this is
>> happening?
>>
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/6e7b1bf6-89b9-a40e-4a67-
>> af79312b12a7%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>>


--------------6AD5E55815977003AE56AA9F
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
    <div class="moz-cite-prefix">On Monday 11 September 2017 10:31 PM,
      Julia Lawall wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:alpine.DEB.2.20.1709111900220.16190@hadrien">
      <pre wrap="">

On Mon, 11 Sep 2017, Shreeya Patel wrote:

</pre>
      <blockquote type="cite">
        <pre wrap="">


On Monday 11 September 2017 10:02 PM, Greg KH wrote:

On Sun, Sep 10, 2017 at 03:10:05PM +0530, Shreeya Patel wrote:

Logging messages that show some type of 'out of memory' error
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

This patch is sent corrupted (leading space is gone), and git doesn't
like it.  Can you please fix it up and resend?

thanks,

greg k-h


Hello sir,

If i am not removing the leading spaces then checkpatch is showing me errors
for trailing whitespace.
</pre>
      </blockquote>
      <pre wrap="">
Maybe you are not using checkpatch properly?  What is your command line?

julia</pre>
    </blockquote>
    <font size="-1">perl scripts/checkpatch.pl -f
      /tmp/0001-Staging-rtlwifi-Remove-unnecessary-out-of-memory-mes.patch<br>
      <br>
      <br>
    </font>
    <blockquote type="cite"
      cite="mid:alpine.DEB.2.20.1709111900220.16190@hadrien">
      <pre wrap="">

</pre>
      <blockquote type="cite">
        <pre wrap="">But there are no leading spaces present in the file which i have modified.
When i convert my changes into the patch, the whitespace errors are shown
up.
Can you please help me with this to make me understand why this is
happening?


--
You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
To unsubscribe from this group and stop receiving emails from it, send an
email to <a class="moz-txt-link-abbreviated" href="mailto:outreachy-kernel+unsubscribe@googlegroups.com">outreachy-kernel+unsubscribe@googlegroups.com</a>.
To post to this group, send email to <a class="moz-txt-link-abbreviated" href="mailto:outreachy-kernel@googlegroups.com">outreachy-kernel@googlegroups.com</a>.
To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/6e7b1bf6-89b9-a40e-4a67-
af79312b12a7%40gmail.com.
For more options, visit <a class="moz-txt-link-freetext" href="https://groups.google.com/d/optout">https://groups.google.com/d/optout</a>.


</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------6AD5E55815977003AE56AA9F--

