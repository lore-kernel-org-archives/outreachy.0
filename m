X-GM-THRID: 6397501362367627264
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.99.116.18 with SMTP id p18mr220965pgc.119.1489535874119;
        Tue, 14 Mar 2017 16:57:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.46 with SMTP id h43ls828200ote.9.gmail; Tue, 14 Mar
 2017 16:57:53 -0700 (PDT)
X-Received: by 10.157.17.228 with SMTP id y33mr202595oty.102.1489535873805;
        Tue, 14 Mar 2017 16:57:53 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x22f.google.com (mail-pg0-x22f.google.com. [2607:f8b0:400e:c05::22f])
        by gmr-mx.google.com with ESMTPS id c123si31643pfa.4.2017.03.14.16.57.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 16:57:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::22f as permitted sender) client-ip=2607:f8b0:400e:c05::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22f.google.com with SMTP id b129so804766pgc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 16:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4LaRMGUQmV2pFcSXoKgXZaDv42rVduDDTLbtilSydK0=;
        b=Ha0fZOCZ/Ntvkq8OdbXOqbRNEQ0hryYA9remY5eeg7FdjnVf334lyLfpGwq0zk9FLD
         VPl3sEFCTXMA105Q1m5/Qn6HWMhNZSErpz10rsbFHJjfWSzHcO6obNLO+sY/P+sBettH
         8F2CzqDw5K4CVK/56cPAPQxx4/WBlqlSKyrBptCmajdm5e8vaCqlNQNIG4W8Z/r/I8+5
         49zZeylYqVsHk52Q+4xvL/fd0k+SQs+M2fklnkE2Ri46oi9TjsRYtVlPAOyLIasgHjKB
         f6LBn79B/owVeNdKRPaqE13/dXNF/n9kSXoMfTHVbkgk6qN360lb6q2cqwJ0Y94g7HUH
         VxVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4LaRMGUQmV2pFcSXoKgXZaDv42rVduDDTLbtilSydK0=;
        b=LKpQE2jMW8RzPAjt8kiHangf/sNX8OrDl8uc/rFLdTYnAqGvazEKhwsbZgrI4LhpdM
         QlQK6o1RvhPgMRM5TnPqKOrGpPGWK17ZJOO4C4I8IJvLU3AZwTr6u6SA/SJEbOcaQK6G
         ymu1aoX4K0vgENim1jSF2opxcOb79Ne9E9Jth8SNvbD70Hev/ZrlSp2GkTAB4bRpwjFa
         iDjrq2qemTFIgyWvkfxjvAHSFKkeTWxHe3ZyvVEmfPa63rXQtmqH4gj6CFDtCzir0yNH
         vTY10GXiHitcwF238dQI9RKB5Jl75/vkzgnEl60TDOtVinS1ifEmXSGAzyobkpD1uELv
         +Nmw==
X-Gm-Message-State: AFeK/H2aOzNPFLzbpJeYt9Sz3AFydwqLf1+d2e7R/Z1wLZLj8G0+IuGRND+PeGpgaE64EQ==
X-Received: by 10.98.214.4 with SMTP id r4mr362953pfg.185.1489535873593;
        Tue, 14 Mar 2017 16:57:53 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id b11sm172366pfj.27.2017.03.14.16.57.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 16:57:52 -0700 (PDT)
Date: Tue, 14 Mar 2017 16:57:50 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Narcisa Vasile <narcisaanamaria12@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] NarcisaVasile
Message-ID: <20170314235749.GA3100@d830.WORKGROUP>
References: <f739a03d-60e4-4d1b-b951-e537131bdf44@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f739a03d-60e4-4d1b-b951-e537131bdf44@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 14, 2017 at 04:32:39PM -0700, Narcisa Vasile wrote:
> Hello,
> 
> I would like to work on IIO Coding tasks.
> Can you please grant me edit privileges ?
done
> 
> Thank you,
> Narcisa
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f739a03d-60e4-4d1b-b951-e537131bdf44%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


