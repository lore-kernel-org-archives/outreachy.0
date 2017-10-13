X-GM-THRID: 6474468235249975296
X-Received: by 10.28.94.5 with SMTP id s5mr318521wmb.15.1507934567291;
        Fri, 13 Oct 2017 15:42:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.191.29 with SMTP id p29ls448057wmf.8.canary-gmail; Fri, 13
 Oct 2017 15:42:46 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDguW8YswBBg+QiAxwQEfL7+hHqQ1E7solUkoumDNNngaWY29iurSDNDlBUIyV1k9gJO+Wl
X-Received: by 10.28.111.213 with SMTP id c82mr320567wmi.25.1507934566383;
        Fri, 13 Oct 2017 15:42:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507934566; cv=none;
        d=google.com; s=arc-20160816;
        b=NpaEt3G6Ba9YFjGlVZNVRaopV926aDZqeI+1K+eacVIAtkVCnK6XBQqM/IyRuKqUiG
         +MHikWkJYZpG9vgphoqK2lOEli/ptL9h3pX/RuoOlTPoHXqG/UCfXns0l12uifP938r4
         fEyo6xrXjpfFb1szo/BtS4p6ZPG4DHQiPAzf3q0zVHk3NIKlwpMlsuxMT85U8ywmzIJZ
         ri4sjoeRgUY1PVdgpILHozgJ7OUk73NWB05K4J8PVvveoLFn2/+11pVJe16tsL24cxA/
         Gtn3Qu32igtejFG0tOxVgW3xN7tUPsu2+C5SySnhQirvMaSjevQfjEJcXPPxKs3RWDf/
         WU8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=bHg9A+pK9K2+xcFmN1GN/iNqb9u4S6JZApvM/WyG5f4=;
        b=cONzSVsoFYzSS/uaT8zbjBArXWhEvOeD4Sd4MgVODkvT5P58NFbCGPBppvTvrTseYC
         fPxVBCDyB0JNE+mLV656q9rQGpATuE0fsTCM5g+JD6Qjws3WfjrOLdgh6XPNnpTff7hL
         OA9LVyK9/oNjZbcbMN0CHHsrMg78u6URElibSsFt/w+Ib6V7izktlRrL5ehd9wdvAGNs
         4ubGTQXopXcgR34OnCSeFNeH+qQ2HsAGJG9BwA0ORdD6i+OIxdDHedWHvyVl3TvBt+IN
         Rce0PMeqKW5YA1kVHGAAqeiIonk0tcQ+d90DWSvlhfjUOSFwb/jKFY5Bh7A9IPVFnKW2
         SJUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) smtp.mailfrom=sakari.ailus@retiisi.org.uk
Return-Path: <sakari.ailus@retiisi.org.uk>
Received: from hillosipuli.retiisi.org.uk (nblzone-211-213.nblnetworks.fi. [83.145.211.213])
        by gmr-mx.google.com with ESMTPS id m62si167309wmi.1.2017.10.13.15.42.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Oct 2017 15:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) client-ip=83.145.211.213;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sakari.ailus@retiisi.org.uk designates 83.145.211.213 as permitted sender) smtp.mailfrom=sakari.ailus@retiisi.org.uk
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk [IPv6:2001:1bc8:1a6:d3d5::80:2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 07AA5600EE;
	Sat, 14 Oct 2017 01:42:45 +0300 (EEST)
Received: from sakke by valkosipuli.localdomain with local (Exim 4.89)
	(envelope-from <sakari.ailus@retiisi.org.uk>)
	id 1e38fE-00032A-I9; Sat, 14 Oct 2017 01:42:44 +0300
Date: Sat, 14 Oct 2017 01:42:44 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Aishwarya Pant <aishpant@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/2] staginng: atomisp: memory allocation cleanups
Message-ID: <20171013224243.xven2blughzfxlq3@valkosipuli.retiisi.org.uk>
References: <cover.1507454423.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507454423.git.aishpant@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

Hi Aishwarya,

On Sun, Oct 08, 2017 at 02:53:20PM +0530, Aishwarya Pant wrote:
> Patch series performs minor code cleanups using coccinelle to simplify memory
> allocation tests and remove redundant OOM log messages.
> 
> Aishwarya Pant (2):
>   staging: atomisp2: cleanup null check on memory allocation
>   staging: atomisp: cleanup out of memory messages

Thanks for the patchset.

Unfortunately neither applies anymore after other patches have been merged.

Could you rebase yours on top of this tree, please?

<URL:https://git.linuxtv.org/sailus/media_tree.git/log/?h=atomisp>

-- 
Kind regards,

Sakari Ailus
e-mail: sakari.ailus@iki.fi

