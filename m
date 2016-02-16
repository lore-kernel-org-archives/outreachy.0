X-GM-THRID: 6251470557563322368
X-Received: by 10.129.92.65 with SMTP id q62mr19328340ywb.19.1455598909782;
        Mon, 15 Feb 2016 21:01:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.19 with SMTP id p19ls2085968qge.24.gmail; Mon, 15 Feb
 2016 21:01:49 -0800 (PST)
X-Received: by 10.13.215.140 with SMTP id z134mr21168832ywd.7.1455598909121;
        Mon, 15 Feb 2016 21:01:49 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x22a.google.com (mail-ob0-x22a.google.com. [2607:f8b0:4003:c01::22a])
        by gmr-mx.google.com with ESMTPS id kr4si1258842igb.0.2016.02.15.21.01.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 21:01:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) client-ip=2607:f8b0:4003:c01::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22a.google.com with SMTP id xk3so241287483obc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 21:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=y0ojAM3aZQ4kv23xF1QyT8JlXRwR6kvqKWVGiq8wg0w=;
        b=KbPuRzMSwcJM+PwRfWxwF8fHNUUhs2WpWGKeBBgdfXZz5Urt92SRy50+ViFbQdir15
         QtutQGBRHqakW3FKNADvKJccPmMhXh496WQmqEXCJUJUZBeLeU5Qf9MnUiLSsC2o87E1
         jb/q7mILp3LICWuB7jFQCo5TPwKyel1q3uYlE61NV1l8DNFv2kYFlxHcZQibRzR/x82C
         H+6ZwE+R+gEKN2nEGj03gR+bo4kUH5zqJNlnLohyNNBuwYPCefPcQtIzibX4KjMDyoD7
         eNlTuo5v2Tjb8/79ubOcWn/O+Wef5JCguDnI0brsTY9X8USj7PECh5zGbApaPRkNXyEA
         5T4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=y0ojAM3aZQ4kv23xF1QyT8JlXRwR6kvqKWVGiq8wg0w=;
        b=k0LVyXjcpPgBHm30ysVTFYyK24DPnjalwtw89zBAGHAlN1CNuGiuZYwn66i5PW3nG1
         FLGYEFxqUJR9g4Jc+hAMpStzEIx8Mrxy6ggVbNIAvqHzWx5io8xOEwot4DVKnRtFRodZ
         gpx1lCD7nxzNIGAfCkX+5U9ZZfeXK3XbgVrlLuZ82sZHjMyEiTYB1Ls95qzIxIDELM9f
         jiGUdKaQ7IJUgA53p8EkQyrYObe8s/VooxjOrC8HAzaS6pUq7VCccgdHiDXWzoMEetP/
         qPeHgLUjeqcRzfsrzZ83lZWzPY0BGqtOVXOlISB/7gfuUZa/7GPPO4yt9HUDMPmb5LZ0
         +YGg==
X-Gm-Message-State: AG10YOThEQSASiWMkP8hmTLI7t+YR9oyRDaiOLc9SgHDP/oGWfykRDoaL29VaZ3unWc/oatbxCgU1VA8FJ8oRg==
MIME-Version: 1.0
X-Received: by 10.202.196.208 with SMTP id u199mr14306843oif.71.1455598908969;
 Mon, 15 Feb 2016 21:01:48 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Mon, 15 Feb 2016 21:01:48 -0800 (PST)
In-Reply-To: <20160216044147.GA28814@kroah.com>
References: <1455533899-17270-1-git-send-email-bhumirks@gmail.com>
	<20160216044147.GA28814@kroah.com>
Date: Tue, 16 Feb 2016 10:31:48 +0530
Message-ID: <CAOH+1jH26AZHV3czfmcOQv-6+zdj0PbhpLBsFAYTBjR_hMxjNw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lmv: Remove unneeded do-while(0)
From: Bhumika Goyal <bhumirks@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 16, 2016 at 10:11 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Feb 15, 2016 at 04:28:19PM +0530, Bhumika Goyal wrote:
>> do {} while (0) wrapper in a single statement macro is unneeded.
>
> Are you sure?  You can easly break code by changing this.
>
>> Also its ok to keep empty #define here to avoid "statement with
>> no effect" warning.
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/lmv/lmv_obd.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
>> index 733222c..7a31bd6 100644
>> --- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
>> +++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
>> @@ -2147,7 +2147,7 @@ static void lmv_adjust_dirpages(struct page **pages, int ncfspgs, int nlupgs)
>>       LASSERTF(nlupgs == 0, "left = %d", nlupgs);
>>  }
>>  #else
>> -#define lmv_adjust_dirpages(pages, ncfspgs, nlupgs) do {} while (0)
>> +#define lmv_adjust_dirpages(pages, ncfspgs, nlupgs)
>
> That's scary, please leave it alone, unless you audited all users of
> this call?  Hint, think about if this call was used as the result of an
> if() statement?
>
> thanks,
>
> greg k-h

 I found out is that if (PAGE_CACHE_SIZE > LU_PAGE_SIZE) then function
lmv_adjust_dirpages is defined with void retun type and it does
something. Otherwise it is defined as macro and does nothing. Also
lmv_adjust_dirpages is called only once in entire kernel and its retun
value is not stored anywhere which implies that the call is made to
function lmv_adjust_dirpages and not the macro. So I guess the macro
can be dropped as it is of no use.

Thanks
Bhumika

