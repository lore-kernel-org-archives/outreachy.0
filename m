X-GM-THRID: 9347595763712
X-Received: by 10.66.102.66 with SMTP id fm2mr18462623pab.4.1427402424352;
        Thu, 26 Mar 2015 13:40:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.137 with SMTP id t9ls808838ioi.81.gmail; Thu, 26 Mar
 2015 13:40:24 -0700 (PDT)
X-Received: by 10.66.218.163 with SMTP id ph3mr16773825pac.46.1427402423994;
        Thu, 26 Mar 2015 13:40:23 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iw3si815055pbd.1.2015.03.26.13.40.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 13:40:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9844EAF5;
	Thu, 26 Mar 2015 20:40:22 +0000 (UTC)
Date: Thu, 26 Mar 2015 21:40:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Remove typedef
 hfa384x_t
Message-ID: <20150326204017.GA5122@kroah.com>
References: <20150324081634.GA30469@akanksha>
 <20150325111608.GA24140@kroah.com>
 <CAHjTdYcHKsWxzJpbNPjrDN7-tU0XPfJ-91vhuzi4kMsFQhzOsA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHjTdYcHKsWxzJpbNPjrDN7-tU0XPfJ-91vhuzi4kMsFQhzOsA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 27, 2015 at 01:00:33AM +0530, Vatika Harlalka wrote:
> Hi Greg
> I have done git fetch and git rebase so I'm not sure
> why this still does not apply.
> Could you suggest some other reason?
> Thanks :)

No idea, sorry, try emailing it to yourself and if it doesn't apply that
way, look at why it doesn't apply.  "force" patch it and fix up the
pieces manually and then diff that diff against your original diff
(messy, and complex, but it will work.)  If that doesn't make sense, I
really don't know what to suggest, sorry.

greg k-h

