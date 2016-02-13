X-GM-THRID: 6250675847475232768
X-Received: by 10.182.46.201 with SMTP id x9mr5650700obm.43.1455353031821;
        Sat, 13 Feb 2016 00:43:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.6.5 with SMTP id w5ls352040igw.21.gmail; Sat, 13 Feb 2016
 00:43:51 -0800 (PST)
X-Received: by 10.50.87.7 with SMTP id t7mr1950597igz.11.1455353031379;
        Sat, 13 Feb 2016 00:43:51 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-vk0-x229.google.com (mail-vk0-x229.google.com. [2607:f8b0:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id v193si553029vkv.2.2016.02.13.00.43.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 00:43:51 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::229 as permitted sender) client-ip=2607:f8b0:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::229 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x229.google.com with SMTP id e185so76847805vkb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 00:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=VPjA6vBkVnLjEZ0nwkBIH/rDlkA5Mf8Rj/MvZ6W7Yns=;
        b=esoSy5qLcUzx91gLj6MnDof2QSxdHQHhYC0DP/tW8aVO7iB9T3XFjYN43m4TvVH4op
         FkMv/BT7ZxQoyphiQp/WNcXbnMyCrO36mJVSVeAXpZSkVW2vKqlaZIoPfD00/2eKZjMU
         ZkvhyZQSwsb8lVY4Q3IhEAryAJssZL+yYwWcL7joGfK86PZq6sEScMFqg6mzBe0R+Yrl
         +zN6kzCKKkhYpyNMsRl7jf1Rm8R6nYtg6o1KLfghJPsn6vHjHQBw5PcAd6N6NGpOi+Sz
         T9v2fzq6pv5wBSbbxQeXXvLPkmgAKpFf0kj5U9wOkIB4FRiaNFJxbCAt8Yy4rbsGSZN4
         s/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=VPjA6vBkVnLjEZ0nwkBIH/rDlkA5Mf8Rj/MvZ6W7Yns=;
        b=gjNV/kydSQcqgCJeSwUiB6p3h+R0ZM8lZXPWlZOa4D0OKpk1RwUo0nMyGkvsUXOvWp
         iA6mfV/D4lRANmir9Mae7KKYZXwWMCjrOsGmtFHR6ry5qxelEqIsbs2EkJhmQ1E5KDzo
         t1lxCBMS6jpByU0ag+Q2Pxa3KPyxkv5W/DQv88tQNm9endNUP3pywGSZ8e5cFvdmEZen
         GFE3ax68aW3e5+Ar+MpWFn+ooUdGbnVitg6DT78aYbbhylf0yunF20eguFPG5DK2seWf
         TqQ6u9vs57SHrWCDRYSUYENekWHjYvso51q0nV1ZASWfhtq0dAloUd8g18Xc6ILSWPKs
         4GMA==
X-Gm-Message-State: AG10YOT/9t4FncWwT7gGxhF9Ez+YJAx9IaK6MKXnp1syCSvWLgcOZXcefVOYMAXiPJSx7dzHuFkVJlYyL5iRYQ==
MIME-Version: 1.0
X-Received: by 10.31.149.3 with SMTP id x3mr4966317vkd.46.1455353031214; Sat,
 13 Feb 2016 00:43:51 -0800 (PST)
Received: by 10.31.142.129 with HTTP; Sat, 13 Feb 2016 00:43:51 -0800 (PST)
In-Reply-To: <CAMnyiXuW=q1jt=PCgxxd=SM7H6wXWfgXT-ZmkdNMGV+nXso+Vg@mail.gmail.com>
References: <1455348872-8892-1-git-send-email-rakhish1994@gmail.com>
	<CAK-LDb+5MWaympnvwWUC+53Nyg3PV-VLRCupuEeNZYgmoEOOyQ@mail.gmail.com>
	<CAMnyiXuW=q1jt=PCgxxd=SM7H6wXWfgXT-ZmkdNMGV+nXso+Vg@mail.gmail.com>
Date: Sat, 13 Feb 2016 14:13:51 +0530
Message-ID: <CAK-LDbLKzU7YZiKMcoG2Mc7M=F21mn66n97s3QdxO4m9+V8muw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Fixed a coding
 style error of preference
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: RAKHI SHARMA <rakhish1994@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 2:02 PM, RAKHI SHARMA <rakhish1994@gmail.com> wrote:
> On Sat, Feb 13, 2016 at 2:00 PM, Vaishali Thakkar <vthakkar1994@gmail.com>
> wrote:
>>
>> On Sat, Feb 13, 2016 at 1:04 PM, Rakhi Sharma <rakhish1994@gmail.com>
>> wrote:
>> > This patch fixes the following warning: __packed is preferred over
>> > __attribute__((packed))
>>
>> Hi,
>>
>> I think it would be good if you can use more reasonable subject and
>> commit log.
>>
>> For example, for this patch you can use something like this:
>>
>> " Staging: wilc1000: Use __packed instead of __attribute__((packed))"
>>
>> Then in the commit log you can explain the reason for the fix. Like what
>> you
>> have done and why the change is correct. And then to give a credit to the
>> tool,
>> you can add something like 'Problem found using checkpatch.pl'.
>>
> Sorry , I am jsut sending a v2 for this :)

Don't be sorry for that. :)

By the way, this patch is already in staging-testing branch.
https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=d8c7d2b35d156e4faccfe2742b6c58492b60d065

You need to update your branch.

> Rakhi
>>
>> You can also go for reading this for the better idea:
>> http://kernelnewbies.org/PatchPhilosophy
>>
>> Thank you.
>>
>> > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
>> > ---
>> >  drivers/staging/wilc1000/linux_mon.c | 4 ++--
>> >  1 file changed, 2 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/staging/wilc1000/linux_mon.c
>> > b/drivers/staging/wilc1000/linux_mon.c
>> > index e550027..284dfb0 100644
>> > --- a/drivers/staging/wilc1000/linux_mon.c
>> > +++ b/drivers/staging/wilc1000/linux_mon.c
>> > @@ -15,14 +15,14 @@
>> >  struct wilc_wfi_radiotap_hdr {
>> >         struct ieee80211_radiotap_header hdr;
>> >         u8 rate;
>> > -} __attribute__((packed));
>> > +} __packed;
>> >
>> >  struct wilc_wfi_radiotap_cb_hdr {
>> >         struct ieee80211_radiotap_header hdr;
>> >         u8 rate;
>> >         u8 dump;
>> >         u16 tx_flags;
>> > -} __attribute__((packed));
>> > +} __packed;
>> >
>> >  static struct net_device *wilc_wfi_mon; /* global monitor netdev */
>> >
>> > --
>> > 1.9.1
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> > Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> > an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit
>> > https://groups.google.com/d/msgid/outreachy-kernel/1455348872-8892-1-git-send-email-rakhish1994%40gmail.com.
>> > For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>> --
>> Vaishali
>
>



-- 
Vaishali

