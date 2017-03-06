X-GM-THRID: 6394380881452072960
X-Received: by 10.13.229.196 with SMTP id o187mr5702286ywe.12.1488810221003;
        Mon, 06 Mar 2017 06:23:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.235 with SMTP id f98ls13359620otf.16.gmail; Mon, 06 Mar
 2017 06:23:40 -0800 (PST)
X-Received: by 10.129.29.2 with SMTP id d2mr2343651ywd.85.1488810220564;
        Mon, 06 Mar 2017 06:23:40 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si49007pfa.4.2017.03.06.06.23.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 06:23:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A81DC49B;
	Mon,  6 Mar 2017 14:23:39 +0000 (UTC)
Date: Mon, 6 Mar 2017 15:23:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	samuel.thibault@ens-lyon.org, diaconita.tamara@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v5] staging: speakup: i18n: Delete tab
 to indent
Message-ID: <20170306142332.GC6168@kroah.com>
References: <20170306134330.8965-1-diaconita.tamara@gmail.com>
 <alpine.DEB.2.20.1703061447520.3078@hadrien>
 <afc93d05-93b2-4e28-9151-ab591db13533@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afc93d05-93b2-4e28-9151-ab591db13533@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 06, 2017 at 06:17:39AM -0800, Tamara Diaconita wrote:
> Yes, these are all changes since a previous version.
> Can you tell me what My patch should contain?
> I don't have in my commit history the previous changes because at some point I
> made a git reset .

Neither do we, that's up to you to keep track of :)

Try going back and reading your old patch submissions on the list to see
what you have changed.

Good luck!

greg k-h

