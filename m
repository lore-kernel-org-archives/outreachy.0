X-GM-THRID: 6663286701018841088
X-Received: by 2002:a24:6f15:: with SMTP id x21mr8415556itb.2.1551601356172;
        Sun, 03 Mar 2019 00:22:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls3755749ita.2.gmail; Sun, 03 Mar
 2019 00:22:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqz/cea0gao/NzYJZCsyM66JxInAedneFeo8iQdZeJJP/csVaDqSQ+BbtcVY62gZmgavwwcM
X-Received: by 2002:a05:660c:2c6:: with SMTP id j6mr8531849itd.9.1551601355366;
        Sun, 03 Mar 2019 00:22:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551601355; cv=none;
        d=google.com; s=arc-20160816;
        b=Chi4HeoM4b7I/3tmplIFSMfQwGSYNXJ0YFKcNJFdbW1b1IM26KFbYmn+0dboqtMs73
         /fJQDhnl5SKG/EPPSQy5LGzZtttmlArouiXPOPnbNCZYHVM3m4LJZwPj6HZli7e+5lr2
         JlrYWNcdp4U2zrY5xQpax+HFmiBTbhEAc91ITE8kx/rLunMZJvX97nNetzZToi8bPxlk
         QYnuNWhxvjBFXn7KTSWK5MHdl2qasidIBBMhTE7iXUmfJzFGVzaMoHq+IrfIhem+NdLh
         v4neB3dsHfW0OQ9db0RVegEhvVRcZIq7uezD6EPCaQ9WzRdEeqVkFEIAj5n4Cdlc+bf2
         KtpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AdTZ5YXpQjiwdMOy4r1yy7Cx+jQccW4eodUQl86bOj4=;
        b=r9HZ1iCsuW7u9ruPC3faJ6ZxLI7Rr8tZKQAgncYsxYz/s2J8zziMT8d6TBL5YaHLJq
         sDv/N53QkgGd77O/iWQAz5GsbHXr9RMjQItMSXxo0nG49fmFzipGZvoPmL82OFtXqz5i
         TpPf0QvXCzKJRl91PspCHMxJhfo3rhGCGirZbioPHpUnef+ixgFnFl0X5vFrhSp5lMFQ
         EVCUDm8naeZKixrgXfKn/E4bUMgOyxgqLxMRUQ3zQQeOdWlf8j63GsErRBQpMgfhJZX+
         jx5/kJx+Jg5vYSZKhTjbKcQZDZYPowIRLtSb29IbkqMD6B5CG67KVrt2Aq/8BzvMAy3Z
         JgGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YRVR2LId;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b80si148700itc.2.2019.03.03.00.22.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 00:22:35 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YRVR2LId;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1252A204FD;
	Sun,  3 Mar 2019 08:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551601354;
	bh=t3afNS+hfteXstcLQfM3Rnuj49PQCQURJdhAXSXJzpg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YRVR2LIdEniR1K5t6BwRKoSISJyVFI/LiBbkUoZFAhl5U+ci7xXdeRrQvGsJoLQfd
	 v13LoQ3N2bZhFAjCyeRU6lJWXZbs6L4DVZ5pCeiwBcfJDavMC/s1QYSCJppg0MGsaH
	 9FlW3d/R1C6e98FWUk2zudVU/QGlVLowBknZwHXw=
Date: Sun, 3 Mar 2019 09:22:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry.Finger@lwfinger.net, floarian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/3] staging: rtl8712: rename bDriverStopped to
 driver_stopped
Message-ID: <20190303082231.GA20326@kroah.com>
References: <20190303081808.83540-1-himadri18.07@gmail.com>
 <20190303081808.83540-2-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190303081808.83540-2-himadri18.07@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sun, Mar 03, 2019 at 01:48:06PM +0530, Himadri Pandya wrote:
> Fix checkpatch warning: Avoid CameCase for struct variable
> bDriverStopped by renaming it to driver_stopped.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
> Changes in V2:
> 	- Change type to bool as the variable is being used as boolean.

Didn't Julia also ask you to say that you changed the type in the
changelog text?  You need to do that for all of these patches.

thanks,

greg k-h

