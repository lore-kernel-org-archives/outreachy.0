X-GM-THRID: 6388519093491728384
X-Received: by 10.28.184.21 with SMTP id i21mr179749wmf.21.1487976509025;
        Fri, 24 Feb 2017 14:48:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.17 with SMTP id a17ls65165ljb.42.gmail; Fri, 24 Feb 2017
 14:48:28 -0800 (PST)
X-Received: by 10.25.145.17 with SMTP id t17mr497747lfd.23.1487976508176;
        Fri, 24 Feb 2017 14:48:28 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x231.google.com (mail-lf0-x231.google.com. [2a00:1450:4010:c07::231])
        by gmr-mx.google.com with ESMTPS id y19si239175wmd.0.2017.02.24.14.48.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 14:48:28 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) client-ip=2a00:1450:4010:c07::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::231 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x231.google.com with SMTP id l12so14554840lfe.0
        for <outreachy-kernel@googlegroups.com>; Fri, 24 Feb 2017 14:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=x/ZjSxZ1vDQ5ANMUR8zAf0fP+komO2UYLfTOWg+SKvQ=;
        b=tH+5KfOxs+g6vPshUvL0OOVWKbM5nJViIDiAqy3YqDfPnes2DVHVTLylwJXrU+y1kk
         In4Nk6m7CFdOMugMT8hj0SDtd9x+g1N+3cfN7vwNCPpngW1Qdzm16XGu+em22/ayGBnt
         jduQvmgOVT172whRpLg2fcgUQPJe4uLWlD9JOu+ObUH+8tphFGaqQLA9/6E+vUh7XqAw
         lTDHGOiCRDFFOu7eN3Eb9xvOqeSSK1ohtnYJNA4ejjSpVJfIv+4fruBiVJAxdax9F1P0
         M1nENhrn5JhkRwiP6q5qbqZdOhzK42IPNjhlS4h5IY+cLOmu2ScfVIZcz3f88Rgzr4Pb
         a6Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=x/ZjSxZ1vDQ5ANMUR8zAf0fP+komO2UYLfTOWg+SKvQ=;
        b=RBJ0RTasbFHN1zQEx9DKwfjp7DZjffzRlHwXxXaGMsW7muK0TVhyg+Yd5qN8vMF0fo
         8KuiHcYDZ+TlfYJqULfBgBqHaOH7skZPn/ehF0ChDIBzJz0v9P467e3HQGgafzMzOebx
         pqT+/tMqduG/p6D58CoDEJStcK0/bm1bJ3VsIuEXm3ms/G5WhboAA0n987F0BwntmXAB
         WOfn138a5jtc0SwOLzBwkouhWQsN7+f05XYFT26r6ScFASnY+tmMQdmeuLGmHU+9hQ8u
         5dhuiHVaIcqaaVTFFgaDJaxSxLns1T7MW3oQeXFsDKl7n/HMA7hrul2F8419LaCbhYbA
         tOFA==
X-Gm-Message-State: AMke39kqkS2L8eCWQd2ygEdkX1OZPlfwWOBrTM1f0Sff0/BMX3VEngCDr+9D5TMAYumiJdViqVmmoteOmjMrvA==
X-Received: by 10.25.213.83 with SMTP id m80mr1454581lfg.45.1487976507929;
 Fri, 24 Feb 2017 14:48:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Fri, 24 Feb 2017 14:48:27 -0800 (PST)
In-Reply-To: <20170224171711.GA3159@kroah.com>
References: <20170220171147.GA15849@singhal-Inspiron-5558> <20170224171711.GA3159@kroah.com>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sat, 25 Feb 2017 04:18:27 +0530
Message-ID: <CALrZqyPpeCm1zj3aqAhAQXe3Q=TouHdFv7qY_4ijNNDBzqJZNA@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] staging: rtl8192e: Removed unnecessary parentheses
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 10:47 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Feb 20, 2017 at 10:41:47PM +0530, simran singhal wrote:
>> Extra parentheses were causing checkpatch issues
>> and were removed.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>
>>  v2:
>>    -Removed parentheses around argument of cast
>>    -Removed cast
>
> I can't keep track of random patches in the middle of a series that is
> updated.
>
> Please fix up and resend the whole series, as a series, that are linked
> together in an email client, not as independent emails (i.e. use
> git-send-email properly).

 I am using mutt for sending patches. In mutt I have to send each patch
 of a particular patch series one by one. So, they come as independent
 emails.

 And, they all get mix because of the reason, if I started sending new patch
 series and at the same time sending new versions of patches of previous
 patch series, so because of which their order changes.

 So, please suggest me some better way, considering I am using mutt.

 Thanks,
 Simran SInghal

>
> thanks,
>
> greg k-h

