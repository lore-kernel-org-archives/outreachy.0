X-GM-THRID: 6252226232544395264
X-Received: by 10.25.22.154 with SMTP id 26mr169500lfw.3.1455710054898;
        Wed, 17 Feb 2016 03:54:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.64.134 with SMTP id n128ls981228wma.37.gmail; Wed, 17 Feb
 2016 03:54:14 -0800 (PST)
X-Received: by 10.194.172.40 with SMTP id az8mr166764wjc.3.1455710054379;
        Wed, 17 Feb 2016 03:54:14 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wm0-x22b.google.com (mail-wm0-x22b.google.com. [2a00:1450:400c:c09::22b])
        by gmr-mx.google.com with ESMTPS id w197si112028wmw.3.2016.02.17.03.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 03:54:14 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) client-ip=2a00:1450:400c:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22b.google.com with SMTP id g62so155452324wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 03:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=0nOjIimy5bQ48e8rFQSg8ATB4nTn8LS6XjOyhNPlexw=;
        b=bN06Q+ea1fnBN+Gw9hlwpmAB9RIWL0YPlDseZzAdmfpW7EwozlT5UBqyWhW8J6Ztjq
         wMqdEacKkuLI8Qr/8q7xR2GRPF+skGABdo38w299G9pwxaM81QoGCWnTNP23blhMz6ib
         cdXGRIM6gxT2oE8hueHHY/dyu3we/lW6DzqmcuH1B34nWsRxklrc0QdMlya3zBfywXGe
         MISyuKZL4cnDgRqryTSQXsa2rzC8mhb6VuUKzAXPyxMAZiWFdHXZDP3evPiHQN1A9z9V
         yqAZuN2Im344qAEyhHhtqweR0o7J52PtJC8c0o+iaxf0oP8iJjju1pm297CetvN5fBVB
         Qa0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=0nOjIimy5bQ48e8rFQSg8ATB4nTn8LS6XjOyhNPlexw=;
        b=Bb9QOS08Q5G56u1P2fK6BhHMNSbZSo1BZt+O9yILdb2FyDO9OLTA32DqT1g1UHe25G
         XnWNTutFsCcYcMs8E7+VFYqgNRMlfUypCLzoNLOihYzg8ZqA+7m2oJ/aziHAi+7deAGo
         wFHBf71T2W7xSPfX27P/bNjibOB225ZLdurehhl1Txj+zAdOGsKxiH6g1CTCEBi6JyD9
         +Nu2gi6MxOvtXk/femEWsfsLfZT6KdgC0lNOG4FecYMrjgivzFqe+qa0N/2MEz0Glvxj
         /4vkOd2lSXHghjfBsluFDbpLph6aJdsLs7O/+bxwbsnNvzBPdPIagAul745q0JX+FaiW
         fdww==
X-Gm-Message-State: AG10YOQ7x5HlSQ8bvSxnqJIF2XJzV4bUG39WPdo+vG462koEaOjyLos0I3qkBA8352d+SFvG4oVHLpuLurFHnA==
X-Received: by 10.194.121.136 with SMTP id lk8mr1596463wjb.92.1455710054309;
 Wed, 17 Feb 2016 03:54:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.7.68 with HTTP; Wed, 17 Feb 2016 03:53:34 -0800 (PST)
In-Reply-To: <CAK-LDbLg72-jAbGvBtLwAj3H4KOvTxtSUXEXrXFVvnUZdtaaTg@mail.gmail.com>
References: <CAK-LDbLg72-jAbGvBtLwAj3H4KOvTxtSUXEXrXFVvnUZdtaaTg@mail.gmail.com>
From: Shivani Bhardwaj <shivanib134@gmail.com>
Date: Wed, 17 Feb 2016 17:23:34 +0530
Message-ID: <CAKHNQQEsdR_GyEhvEgp_sJWjbOH92JvmW0Rhf8VodR=PJp8Kjw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Red hat women in open source
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 17, 2016 at 5:20 PM, Vaishali Thakkar
<vthakkar1994@gmail.com> wrote:
> Dear all,
>
> I have a great news to share with you all. Our very own Julia Lawall
> is chosen as a finalist for the Women in Open Source Community Award!
> Red hat women in open source award recognizes the important
> contributions that women make to and in open source.
>
> Final selection is based on public voting round. And online voting is
> open now[0]. So, please vote for her and lets make her win. :)
>
> Thank you.
>
> [0] https://www.redhat.com/en/about/women-in-open-source
>

Done. :)

> --
> Vaishali
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbLg72-jAbGvBtLwAj3H4KOvTxtSUXEXrXFVvnUZdtaaTg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

