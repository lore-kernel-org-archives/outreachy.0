X-GM-THRID: 7921078370304
X-Received: by 10.182.125.100 with SMTP id mp4mr30741340obb.21.1426585528417;
        Tue, 17 Mar 2015 02:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.232.138 with SMTP id to10ls13301obc.93.gmail; Tue, 17 Mar
 2015 02:45:28 -0700 (PDT)
X-Received: by 10.182.205.232 with SMTP id lj8mr67776116obc.39.1426585528246;
        Tue, 17 Mar 2015 02:45:28 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si2438711pdb.1.2015.03.17.02.45.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 02:45:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B7319944;
	Tue, 17 Mar 2015 09:45:26 +0000 (UTC)
Date: Tue, 17 Mar 2015 10:45:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristina Opriceana <cristina.opriceana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: drivers: Remove
 unecessary return value
Message-ID: <20150317094524.GB3917@kroah.com>
References: <f972425373892a028f783e456e9990fa1ffba62a.1426538724.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f972425373892a028f783e456e9990fa1ffba62a.1426538724.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 16, 2015 at 10:50:22PM +0200, Cristina Opriceana wrote:
> Change _SUCCESS return value for function loadparam to void as it never
> changes and it's also never used when calling the function.

When you do this, please break it up into one-patch-per driver, to make
it easier to review and merge.

thanks,

greg k-h

