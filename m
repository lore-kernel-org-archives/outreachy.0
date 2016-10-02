X-GM-THRID: 6335442483781042176
X-Received: by 10.129.132.131 with SMTP id u125mr2689151ywf.71.1475432197784;
        Sun, 02 Oct 2016 11:16:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.69.204 with SMTP id c73ls1817719itd.22.gmail; Sun, 02 Oct
 2016 11:16:35 -0700 (PDT)
X-Received: by 10.36.131.71 with SMTP id d68mr3905269ite.32.1475432195161;
        Sun, 02 Oct 2016 11:16:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id d11si21572pfl.2.2016.10.02.11.16.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 11:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id t6so3810074pae.2
        for <outreachy-kernel@googlegroups.com>; Sun, 02 Oct 2016 11:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rRGVZbDUDJ+i5hDCAuRgKYQIBVJHL9JmOnJXKEtcJpM=;
        b=vxjN13AfJSg4TzpG36hm6RoeR8JDVhKntQvLf0Tp+Dd+gctkxosdjtEqyD8u/+ZkXs
         BxbcxT+TkEPzBN0GV9+2y3roU0lxEgMGBpi7BU7KnETF8xl7i9joK3XK4cmE4ghrdkJs
         r7PzlrZt2FdBGJpsYUQYS8vyXWkPG+5nzga/qASKuV8sid61m3W8xNaFCkVBVO7DgkDZ
         S+ejnvF9RWv4lAJGOgnNfw592xc4+5WoO3VgALF2HKn/LBRLKnUmGw+iwL33blaPoaYy
         GiNRf8RHPrS2S/YJjM+pBHwyTpmjTQfLNBpcjWNGis0ViSsnYM9PA2iIZcidD458JPlh
         GerQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rRGVZbDUDJ+i5hDCAuRgKYQIBVJHL9JmOnJXKEtcJpM=;
        b=Rgn+h6UVjILd7+PgKRheDmbpPw0bbM8chOstvmxpGeD9d+x4c31wRhS87KXNbc8tnC
         Pfj20GabsRWSl/9STZo9Jpv897N35pQlBPEgzSS1Klhy6ZjX2NfKqZj1V7+NlnX38H9q
         zTdK6YN6RQpvOBjYfWG906n1V+b6L6JoW/zc+1ogMEBQ/+UNqX9eZQ/MCKKUgW9LWt2i
         6K4YjV086jy4gHYQteOZQG0VZYmAHT63/UQef6rnU8dO0Xfhh2641z4VqfJkQxP0z0A8
         a25BcAuVV9YcnspwIsTH5xpJGwuMPvEHHCySi7PlyHCww5RjWyquA6mwOEzlR+/kKVqg
         XqXg==
X-Gm-Message-State: AA6/9Rm5xsdH5Z5+AnPnzZuqFjxM4JTBxdLDnsXMD+Po3YDc03BqOepWs6QWbwt/CfOv/A==
X-Received: by 10.66.131.4 with SMTP id oi4mr30915871pab.66.1475432194981;
        Sun, 02 Oct 2016 11:16:34 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id xs10sm41699728pab.13.2016.10.02.11.16.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 02 Oct 2016 11:16:34 -0700 (PDT)
Date: Sun, 2 Oct 2016 11:16:32 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Anchal Jain <anchalj109@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	Greg KH <gregkh@linuxfoundation.org>,
	Jonathan Cameron <jic23@kernel.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 ] staging: iio: cdc: ad7150:
 add comment to mutex
Message-ID: <20161002181631.GA2819@d830.WORKGROUP>
References: <20161002153424.GA4211@life-desktop>
 <20161002154039.GB21118@kroah.com>
 <CAAbeOSuPu599ySH5Mm+VB3xx-j0UX25+Ztb2qVbqh8qnErFCKg@mail.gmail.com>
 <alpine.DEB.2.10.1610021751050.3327@hadrien>
 <CAAbeOSv3x=ef+CxeGk11hiTMaeiRdzqrEPgiyMfpxg0St2H-qw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAbeOSv3x=ef+CxeGk11hiTMaeiRdzqrEPgiyMfpxg0St2H-qw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Anchal,

I'm seeing that Greg doesn't have confidence in the comment added
to the mutex.  So, let's build his confidence.  That would mean
elaborating in the changelog a 'why' that shows that you did your
due diligence, studied where the lock is used and came up with
this comment.

Having said all that, in this case, and in another one you did or
attempted, a comment was already present, just not in the place
that checkpatch wants it.

So, a 'cheat' on this one would be to simply state that in the
changelog.  ie. Copied the comment from the structure header to the
structure body to appease checkpatch.  

BUT - rather than taking the cheat alone, follow up with a study of
the code so that you can make a meaningful comment in the changelog.
Now, if your study matches the comment - you know you understand it.
You do a few of those, then you move onto ones that don't have the
comment to compare.

The comment is important, because someone changing the code is going
to wonder if they need to take that lock and look at the comment.
If there is no comment, there going to go off and figure it out. If
there is a comment, they may rely on the comment.  We don't want to
lead them astray.

I think on this one, you did all the above and I probably led you
astray by suggesting a simplification of your changelog. 

If you want to try again, I'm game!

alisons




