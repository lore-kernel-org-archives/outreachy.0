X-GM-THRID: 6954403981420396544
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a05:6102:222f:: with SMTP id d15mr6525774vsb.1.1619244829735;
        Fri, 23 Apr 2021 23:13:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:94c6:: with SMTP id w189ls841614vkd.0.gmail; Fri, 23 Apr
 2021 23:13:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+EBbErEwWqN6F0IzMv7WgAVURUvPfqeSYwafSTxDMTZTxkk9BawlERNFVQzPHjRLDXhuH
X-Received: by 2002:a1f:45c7:: with SMTP id s190mr6134582vka.24.1619244828810;
        Fri, 23 Apr 2021 23:13:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619244828; cv=none;
        d=google.com; s=arc-20160816;
        b=T2Nc74tZ8BrmkUaTjwuKvcY7wBuGv4R8mzA3xBLoTJbN/0JlgghUCBN224ji0klYWv
         TALtDWf5xCQb2rTFE+qwIN1NbOjXhKv5s/6Nzn7B5xkdeb+VdH+KfH+IiCZS6kFHmX7H
         Gx7WcD/qMZKsAm9DXpcyP7rwzfZM7EKI8e14slu0aiGjsChnjyncySPJOiI/0+9AaGI6
         NddnXtpUomvqhdmZy0Hvnp3AFqXJTl8iNY/TdH9yWphGl4OoeeMNk4k6Bl0zj7C1K8eb
         OqFiyroBhqin2QEoBLrlbtpapiezeRQSmnUdsIPOSFj7ocD19+XiAx4+D85o2lhGmMti
         SA7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EnaDVpnWVk+qxIesIDpROfDHUSenzLgAnC6CqD01vqs=;
        b=o24xiQSi49ODJPkIzFUJOovsYB0XEBUPIJJS5GkSjimDSjasonA38d4gNNYr1wXi7c
         1RkMHwvFY6YsnPsoO93T8t8q0PJeJOkmZcZ5uKwtGFbSYGqI5SaXV+sS3VWC0sotsK8o
         hnugJiDZ7ARdXGS/+z7E8cSomEXE6ucXanFEbqTv3uP9KXET0E64MUBJR347pmKzo7sB
         tffkPmL1iRhX+eK17ciMTLKLSQBC31PReWuYwb77pCibcewubhIMZtsYr+mBsyOg0cfA
         zxuKaoKDIcKhMLbCBVqx0VAojwazheiYaVyjyMlHXEnJ5r9PLUXzcRCFgonytBKiwu/u
         KGVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bLjGUf4a;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id v23si751632uak.0.2021.04.23.23.13.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 23:13:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bLjGUf4a;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42a.google.com with SMTP id m11so35473594pfc.11
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Apr 2021 23:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EnaDVpnWVk+qxIesIDpROfDHUSenzLgAnC6CqD01vqs=;
        b=bLjGUf4a6BGTrbR4LsYfdWCUEVr8SK3VuQmj6X8weBQMP1pGhnz2vf29ZOAFFwQTcg
         YEyx+RIKyho8NDXY7nfRGYXu+CgCgEeDKE0PENbtbCEFbx1EX6xqMRD2IJSJ0DmbuTt4
         iKVT3L8+NB161UU1M699/MyvNfmTUHoeKO7i4xAk4IMygMS65MXDCeXq88mJC88GA8EF
         7+fCrEi8Zefk2vVOUDxesRFTLthIUUNyJwr6jN4L/eBcsc0hO/Ckc7kut2g8w+ojdcAy
         +7G2JnQ2lK8RjVlpBzn9sWudJVemg274hy3wzzJnGm12ZEBi+SkM7wYoKMwvErbxVyEu
         Za4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EnaDVpnWVk+qxIesIDpROfDHUSenzLgAnC6CqD01vqs=;
        b=Ud3b1vrZF2glPbfvvA2S6IgL0zOlJn96uZY0SpXgCX8liHTObmBfIvJ5aWNBBMblug
         9ER6pja9vWaOrzS+dzrC0HbO/Im/1uJCUl7ji8nwae6Haos7xTY/4GxmzCf5oVkSZ7GV
         JnyRc3Fr2ZRb5hKXLC6LFvX/U5PYrXkNFVNjqkYcQdf2jt0fC0HPUsnwOPtWWi451kjx
         CD3JSFdZln/UWT28T/lP2TopGumlOl+SAAwqPgsZ/iD4kA0yuiHhDDilvRP/qbVsBl6x
         mns5XEqdVkhtJrEYloJjsehlxbyWziXcaECgEP4Z0Xv+r0MKWh22NnSQZLJbHUEwpYzf
         9lag==
X-Gm-Message-State: AOAM5312zD0irwGwNIb4F4YKXXPSvAQ9k7NMx9iyuk3SGdYxgWswGRYo
	iAJZ5RPUCsHkhn2qQzhgbOzSrUQejvU=
X-Received: by 2002:a63:687:: with SMTP id 129mr7075226pgg.17.1619244827768;
        Fri, 23 Apr 2021 23:13:47 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([117.198.76.223])
        by smtp.gmail.com with ESMTPSA id s13sm6275405pjl.48.2021.04.23.23.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 23:13:47 -0700 (PDT)
Date: Sat, 24 Apr 2021 17:13:43 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Help regarding contribution url
Message-ID: <YIQEbxT3adT7Wf18@kali>
References: <ee642783-e5ed-466d-8ad1-0bb856e353fbn@googlegroups.com>
 <2951802.hGJHBBm5eE@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2951802.hGJHBBm5eE@linux.local>

On Fri, Apr 23, 2021 at 07:28:12PM +0200, Fabio M. De Francesco wrote:
> On Friday, April 23, 2021 7:19:15 PM CEST Mitali Borkar wrote:
> > Hello,
> > I was recording my contribution, in contribution url field, when I added
> > both staging and media drivers patches link, it said Enter a valid url.
> > When I added either of the url, it got accepted. May I know how to add both
> > urls?
> > 
> > Thanks
> Hello Mitali,
> 
> You have to record a contribution at a time. If you want to record your 
> second, third (and so on) contribution, you just have to click anew on the 
> green button "Record a contribution". Each time you use it, fill the form and 
> save. You'll see your list of contributions grow.
> 
> Regards,
> 
> Fabio
>
Hello, 
Thank you, this helped.
> 
> 

