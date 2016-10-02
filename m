X-GM-THRID: 6335430862293696512
X-Received: by 10.157.46.174 with SMTP id w43mr2535883ota.33.1475421218138;
        Sun, 02 Oct 2016 08:13:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.60 with SMTP id i57ls2310776otb.48.gmail; Sun, 02 Oct
 2016 08:13:37 -0700 (PDT)
X-Received: by 10.157.43.100 with SMTP id f33mr1761875otd.36.1475421217620;
        Sun, 02 Oct 2016 08:13:37 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z73si924791pfa.1.2016.10.02.08.13.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 08:13:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D2A7771;
	Sun,  2 Oct 2016 15:13:36 +0000 (UTC)
Date: Sun, 2 Oct 2016 17:09:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Anchal Jain <anchalj109@gmail.com>, outreachy-kernel@googlegroups.com,
	knaack.h@gmx.de, pmeerw@pmeerw.net
Subject: Re: [PATCH v2] staging: iio: gyro: add comment to mutex
Message-ID: <20161002150939.GA10868@kroah.com>
References: <20160928181518.GA14365@life-desktop>
 <288d488e-6526-af21-eb6c-f7ee040f3168@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <288d488e-6526-af21-eb6c-f7ee040f3168@kernel.org>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Oct 01, 2016 at 02:35:05PM +0100, Jonathan Cameron wrote:
> On 28/09/16 19:15, Anchal Jain wrote:
> > Fix the checkpatch.pl issues:
> > CHECK: struct mutex definition without comment
> > 
> Nitpick of the day, only one blank line here.
> > 
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> Have to say this isn't one of the greatest warnings from
> checkpatch.
> 
> If Greg has already picked this up I don't really care
> but it is kind of obvious that buf_lock protects
> buf, so I'm not going to bother applying it.

I'm not going to apply it either for all of these same reasons, thanks
for the good review.

greg k-h

