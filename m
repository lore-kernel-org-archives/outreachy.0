X-GM-THRID: 6254945718130180096
X-Received: by 10.140.102.163 with SMTP id w32mr14942942qge.10.1456424776904;
        Thu, 25 Feb 2016 10:26:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls574628qgy.63.gmail; Thu, 25 Feb
 2016 10:26:16 -0800 (PST)
X-Received: by 10.140.27.180 with SMTP id 49mr14934036qgx.19.1456424776271;
        Thu, 25 Feb 2016 10:26:16 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id 79si1430964pft.0.2016.02.25.10.26.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 10:26:16 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fl4so36146536pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 10:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=fXCxeccZlnewQjPcTX7Fx55sCd/Cwu0xo9+aEQTb/Zo=;
        b=nT6xeN0A7u/GGpawZPtrRWnVpCwXkE7hJF8udG5MLDuVFJekbWoCLmyTuD9xpTowYw
         NqVTLc0QjYEzwonIrBF93DwqAJa4E80BhBJLdNgYDaaSGYX2b0ZhQUv5j2JZ1w7LqhPF
         qHemJmx5ETrQI88szRZu+ly7CVr5aVTOfCXW0LBDKHOxHRJoor7QGw7Hmh/8OBBsB6uB
         D96HCXX4AgUU5psCSMFvVmqZ1je00G4v5+lTmrYE1JiRUMlJqZSec6Qht78GoRMgPWIu
         JOXfnhYoZiKS92/H/UrmL2e0nQ4lUbKtvcyR2mxe+pK9YNvQSTm8ljLdg2DQBQLC6APD
         bnVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=fXCxeccZlnewQjPcTX7Fx55sCd/Cwu0xo9+aEQTb/Zo=;
        b=cpRLXleS5lHoP886tQ1ZK40qQNTlCdMcfyqbVabHXmDttu3VFDTbLzY5opHVyaiTyn
         9OwvKL7o3h7tV4+VVQcXxMZFVsGMdzC2ADfsu2rGLME9WuZYWLeaSaKeTwfw7FwcoaHy
         eJ3fI5/EqGj0Ar8DMFZPhrJOfWQIX4oeJL/fV9rhhOzCdq5qmBQaDfi6BIGpJLcTuH4Z
         d4gsJ2zTZyo3FJsxnrAl7EHyiRIXn+mu5VZG4NnWnbp3Q8L7j0bXKNYjt5sf4UUdDpbv
         PPGhY0Dj7QI/K3cX8eanrVU7MaLdpYY1XEABfO90wUuJR7LnB/VsGOb0L39hNm/4nbDg
         YpmA==
X-Gm-Message-State: AG10YOSyhZuYJ6DxP5T6W0/3+4FCf/q1NJqri6mgdWTbRGgazi76pijLbDk5yh7MlFZMYw==
X-Received: by 10.66.233.131 with SMTP id tw3mr66032927pac.89.1456424776054;
        Thu, 25 Feb 2016 10:26:16 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id ta2sm13790738pab.42.2016.02.25.10.26.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 10:26:15 -0800 (PST)
Date: Thu, 25 Feb 2016 10:26:13 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Daniel Baluta <daniel.baluta@intel.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: IIO Coding Task 2 ?
Message-ID: <20160225182612.GA2359@d830.WORKGROUP>
References: <20160224194352.GA3122@d830.WORKGROUP>
 <56CEB5B4.5060605@intel.com>
 <56CEC19C.1010300@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56CEC19C.1010300@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 25, 2016 at 10:55:56AM +0200, Daniel Baluta wrote:
> <resending answer due to outreachy-kernel delivery failure>
> 
> On 25.02.2016 10:05, Daniel Baluta wrote:
> >
> >
> >On 24.02.2016 21:43, Alison Schofield wrote:
> >>Daniel,
> >>
> >>I'm working on IIO coding task #2.
> >>
> >>In 'auditing IIO device state updates to locking' I believe that
> >>in addition to "Updates to state changes must always take mlock",
> >>any checks of device state must also take mlock.  And that is,
> >>what you are asking us to do in this task.
> >>(iio_buffer_enabled is checking device state, not setting)
> >>
> >>Basically, anywhere iio_dev->currentmode is set|checked use mlock.
> >>
> >>Right track?
> >Correct.
> >
> >>For this task, I'm not clear on why we are doing RFC.  In practice,
> >>mlock is used very consistently for protecting device state.
> >>Can you clarify the controversial aspect?
> >As agreed on this thread:
> >http://www.spinics.net/lists/linux-iio/msg18540.html
> >we will try to propose some API like:
> >
> >/iio_device_claim_direct_mode //iio_device_release_direct_mode/
> >
> >which will try to make code easier to read and hide the inner details of
> >taking/releasing mlock.
> >
> >We will make this in two steps:
> >
> >* introduce API
> >* find a place where locking is not done
> >* use new API
> >
> >After IIO maintainer says this is OK:
> >* update all places with the new API.
> >
> >thanks,
> >Daniel.

Thanks for the directon.  I am working on that first step.
alisons
> 

