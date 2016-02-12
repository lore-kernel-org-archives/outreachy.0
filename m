X-GM-THRID: 6250100054886973440
X-Received: by 10.66.221.100 with SMTP id qd4mr24463pac.0.1455261367409;
        Thu, 11 Feb 2016 23:16:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.181 with SMTP id d50ls1061230qgd.51.gmail; Thu, 11 Feb
 2016 23:16:06 -0800 (PST)
X-Received: by 10.31.11.75 with SMTP id 72mr21835vkl.2.1455261366901;
        Thu, 11 Feb 2016 23:16:06 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id l85si778491ywb.2.2016.02.11.23.16.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 23:16:06 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id y9so56914794qgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 23:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Us6ggadcANhl4ccj2MpR5IpwppfdJVrmJi3sUqR1gh4=;
        b=Jp+4ney6OQH8IZGa1wh3/X9xkV6GxSkLRmYx0oYk3ebV6yQBnxJBiP1G6obmumj9sD
         b/exyktJ+upfVsWkYoTrFz5tZ3/vJMSm5Vh6PIfT4YO+vQ1DuqV80P7D+MbVn3EYJHfP
         Y5zmD6RdSvFVT+koSEwmKRlF+F96YJhfH7UiHZHnWG907K1lQDGanOuvgzmnD2uZaSvU
         RkDdMfWZiLNXPAj1YraGEeU7n0YzGu4XxUTcfo5Vy5J/QPXPh7xFBd3AhtAnawYwTAzK
         nhvB2BLm2OkzTd5r1B2GJunc5OCU6t264HxhWmeS4rvtLbqEMkU/TJaUndG9UzzUiLe/
         lcwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=Us6ggadcANhl4ccj2MpR5IpwppfdJVrmJi3sUqR1gh4=;
        b=EOH99kWban0iE7P6VJ6USTYKHEkvNVhku3IEQ7MttNM6RV6DuyiThDAwNAOcbUvHzo
         uMsY8FVcIVe6/jWMP+iwobBwCkpx5JsBcDfoIF3j53au2NQHPmJFmYidYeYpT7VS58o7
         vOtljyY3C3ER9cnp3kn2oCcNXyy7Q6zMeafI9tpPeSswLCHaXOBUebV3jPt4MyZvHuDv
         f391CUa7XKdJ1b2qqpda1w4qzn0MMGZJ4+lgTimyZLxFoEEoACcFzNFqsnS4CWGsSd4d
         5P3+CtGkkNGjngZycmqi5fWJnXd1Js2CfBqDPZgRuVzcINvaAQ1I5Nb3oqsmbhj9AhMU
         0LvA==
X-Gm-Message-State: AG10YOTNYKKtLAV1ldnmqwkLIAbbforV6QqgA2PNbe9cgOpO2pjRXEziHhoNFJw3wIVIq2D/lrVrmkkmFQPXkQ==
MIME-Version: 1.0
X-Received: by 10.140.23.81 with SMTP id 75mr61151922qgo.35.1455261366714;
 Thu, 11 Feb 2016 23:16:06 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Thu, 11 Feb 2016 23:16:06 -0800 (PST)
In-Reply-To: <20160211183113.GB3741@mtj.duckdns.org>
References: <20160211182011.GA10882@amitoj-Inspiron-3542>
	<20160211183113.GB3741@mtj.duckdns.org>
Date: Fri, 12 Feb 2016 12:46:06 +0530
Message-ID: <CA+5yK5EWjvLZS7v_kwNrXdZpxvmn+qJhXNXNwnMbd8WUNzOeVg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm724x: gdm_mux: Remove create_workqueue()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 12:01 AM, Tejun Heo <tj@kernel.org> wrote:
>
> It'd be great if you can explain how the conversion is okay.
>

Will do in v2. Thanks for elaborating on how I should write it.

>> @@ -602,6 +600,8 @@ static int gdm_mux_suspend(struct usb_interface *intf, pm_message_t pm_msg)
>>       mux_dev = tty_dev->priv_dev;
>>       rx = &mux_dev->rx;
>>
>> +     flush_work(&mux_dev->work_rx.work);
>> +
>
> If work_rx is self-requeueing, cancel_work_sync() would be the right
> option here because flush_work() only guarantees that the current
> pending or executing instance is finished.

How do I determine whether work_rx is self-requeueing or not?

Amitoj

