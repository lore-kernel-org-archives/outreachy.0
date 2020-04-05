X-GM-THRID: 6811040563999014912
X-Received: by 2002:a7b:c205:: with SMTP id x5mr20605910wmi.189.1586128559175;
        Sun, 05 Apr 2020 16:15:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:56d2:: with SMTP id m18ls3961182wrw.3.gmail; Sun, 05 Apr
 2020 16:15:58 -0700 (PDT)
X-Google-Smtp-Source: APiQypL+v4AUsMbWdvuNjpPpzEoQRb9qQbUkT9dpWGwWIhYpmaWenH7CtbVo/TD6stqlerpR2YPP
X-Received: by 2002:adf:f2c5:: with SMTP id d5mr19275717wrp.409.1586128557908;
        Sun, 05 Apr 2020 16:15:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586128557; cv=none;
        d=google.com; s=arc-20160816;
        b=zYsWsA09VFUFupmuGPZzrgymiXYUIv5Kohc2MmwnT5JjFQca2aLiJqlRDq9xxif1w5
         mqJINRTaYGzEqihVbpHl8458eoKLEoUSathPSwCwwkOzPsnkFr2KzaYov9jdjhKpB46o
         8wGddVwbm0c4aTlq7x+8TtkxaIW0XVDNOiHTayWWSSK6j6js+U90Ud17EHSDcn9QcOWY
         JxzyCpS7WX30mQdkBwKi7tTbr9t4hF4LFvzVTce5R6WdxGn2vnqSI449mv5ixNfGlL8y
         7eNH6x8Tvb6yCxBO07t08tcs+8zA0OSx4WpEUAJGvzWmKUIfC28NH5qfiDPzWSVMzrwB
         E2CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=7GjJCOpnxvPXzRNqKmXTINBsyp1hDI+sdnXUNUgw15E=;
        b=SjTEXjnwjLo8Qup8unvMFgHOpa08Cf+MuBx3N8q6FZxg1oaEU3kyECQcy4R4u8eskA
         qtPs2Kcu69EufKax1ZH2TjiNWZah4a0Ro+ggN1c+PJc2UxkEiOKfLx4ri0f495yQsMKL
         c26O+F+Zq/ygi4S9ATTTHCEmkhemZkfJxBkVKyea+kYkCUMNjlbyV2ihsjmW8bqehHY7
         c2eop753CtCjWu6j20NdeGQb+HnmwmD4Ajhx0ATNnZPIWJv0fuQE1J73UMUxvhoEs7hk
         450TNozWqDyg5jr0XBIHuMDiBx0IzgGjWBO4UGwU3hZjQmRRJrzFsLsb3qGcxTC6iWew
         jx2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJm5g1z+;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id v11si431593wrq.4.2020.04.05.16.15.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Apr 2020 16:15:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tJm5g1z+;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id s8so13111478wrt.7
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Apr 2020 16:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=7GjJCOpnxvPXzRNqKmXTINBsyp1hDI+sdnXUNUgw15E=;
        b=tJm5g1z+tu+BYQPqvomyXOdZDiO0HLvA76rZkmExtSBuH99X/pJhyOVHu00iUpDNb4
         M5EiXr23LT4H/kwxz+4BBG27v/gVWaMIt21XU251V/LbVS+yysZi6oG8u5/KCxbTHhaE
         VG7ib+5Ih8P65TEyJVL9K9FrexnczTCWqD6Ibjf+x3/8D+1Vw48frT003SSKjFbF53Eo
         9oEcvT9EoaspJtOXuf0lq+HDVncRpaUOcOhC9vUN1D9wR6SBP9WmaYEh5uL9Mzvt0N4y
         t8duiPoeCsCzSeLtBm/Wpm2Iw+YqWZQ1bHGMJRZifeUxz9+re2ufIZIHykRhrXJbbtkt
         KlFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=7GjJCOpnxvPXzRNqKmXTINBsyp1hDI+sdnXUNUgw15E=;
        b=d+exz6auqpa8HzQMMd34RTmCTMj8J0TvDS4x/RQLT51asx6W7Fgqmv0OJ31nuJjmzJ
         ayXGu/gEho8BVNhZPBwX97wgn9hGkzWEcWua1KhqtTQ3J37pN2mn3soy1Yhpw0+TTAVc
         AYQ2wsUiWt/Xdb2vO69x1OwOAZpyzj2HdeOm1UNuJn9IQbo0aIcAs8wIAgy8ay7ONabg
         8O5/gdjqowJ4+06lmanjuBrEOGd1G63L4venc+WGSyWQQNpZ2eqKYXJyAvyTgmP6d+1K
         C5lvP/Xw0nP3PNYuIcjpp/BRLZTXe2v3UzzM7x/vsLnxOIKWz21UYcYyxl6UnsM4rwwu
         wpLw==
X-Gm-Message-State: AGi0PuZvCESbP6OPU73W4rsBqctOB9a6nlDmEvMv3fTBNm3oHDzEDaSa
	rlEAVmmpkWbFTHDzTShEqU1nGy0LCFM=
X-Received: by 2002:adf:e288:: with SMTP id v8mr18752369wri.141.1586128557567;
        Sun, 05 Apr 2020 16:15:57 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.214.63])
        by smtp.gmail.com with ESMTPSA id r3sm23919662wrm.35.2020.04.05.16.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Apr 2020 16:15:57 -0700 (PDT)
Message-ID: <9c10e8c19d4df6ee5a4b04e21829a7010f218ff9.camel@gmail.com>
Subject: Re: [Outreachy kernel] Outreachy reminder - final application
 deadline
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, Outreachy
	 <outreachy-kernel@googlegroups.com>
Date: Sun, 05 Apr 2020 19:15:55 -0400
In-Reply-To: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
References: 
	<CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-02 at 14:45 +0530, Vaishali Thakkar wrote:
> Greeting Outreachy applicants,
> 
> Thank you for all your contributions in the Linux Kernel. This is a
> reminder for you all that Outreachy's final application deadline is
> approaching on April 7, 2020 - 4pm UTC.
> 
> Now is the time to record all your contributions and apply for the
> projects you're interested in. We would advise you to at least apply
> for 2 projects of your choice. And please do not wait to apply on the
> day of a deadline. You can always add more contributions until the
> deadline. Don't forget to add links to your patches while recording
> contributions on the website.
> 
> If you have any query, feel free to contact me and project mentors. We
> wish you all the best for your applications.
> 
> Have a nice day!
> 

Hi!
Are we allowed to send patches to the linux kernel after April 7, 2020?

> 
> Helen Koike and Vaishali Thakkar
> Outreachy Linux Kernel Co-coordinator
> 



