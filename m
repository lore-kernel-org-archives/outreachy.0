X-GM-THRID: 6465312034582953984
X-Received: by 10.28.6.76 with SMTP id 73mr375432wmg.26.1505494207770;
        Fri, 15 Sep 2017 09:50:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.160 with SMTP id 32ls319729lfr.3.gmail; Fri, 15 Sep 2017
 09:50:06 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QATrc8FyR8iSDzCp8WJhLFrn74CDT9bXLWSrk6GFkoCIGzgQi1xZrsyfUq/Z6jH7dYWHLlQ
X-Received: by 10.25.40.20 with SMTP id o20mr247143lfo.41.1505494206320;
        Fri, 15 Sep 2017 09:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505494206; cv=none;
        d=google.com; s=arc-20160816;
        b=RG3oRpkxiGqg3ltdni9bca26+qQVDHM/0ZgBwwB7Mr6RkMpUqqF21loFAawNd7eFq5
         dCx9/4BzE151kyqgiLS7dh7klG1uSsKq06JweNQ0BW2VXtRhfPcywXL3Vp4rlM8RWOBz
         ljzAyqfMVK/jvhZizU948JHTimfDl4DQqHGoet97aTxiguaD7KvGm3Du8LY5t37Hy4/K
         2jE33n89WPIwAgvjsWwRAdZ6x38ITtWwaGwAU79njIX7KM8oWFJRKfbIIdQcOmEejPGC
         K658xEXJVQF0krnHRJoqzYRvyPzVbkAnYua2LwlPY2z7Td+spPPXB3+1nguNKkOrmBnd
         Srow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:arc-authentication-results;
        bh=HPgbheGiSQ66BWu6xHDrDZ/KjMdRXMGQcM6WDS+AyTg=;
        b=jYWLWBSvupdBJnAeAbhEQz4gHXpLaF1k0P08g9ERvktKZ0uTKQK0bp+NPNe7DSpeSA
         vOYzZrcJOULpbppc06rt06ceBsfG7EpkfBD/eV1gFVl23qACzvu+X7iFX6yxrz2dWiJn
         7fsLX0Dips7T1RLFdOTge8EFXcc4gWOThascmRiChWvbDTWdkmkZLPDa61ilYFygqwSt
         78iE5I56JuvzlPMtj7Elzb1qoSGso5EXqCTdHM2gRIbDTrCvEoWRsy38dxNfg3L5Rsua
         CPL22M+5V9Uxyh8kqiblOzrv2lX0xv9FGA369sPQraQdQbFcTyvvOdJ8PkeKBji5q2C8
         Mubg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p70si50693wma.1.2017.09.15.09.50.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 09:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A96F7504;
	Fri, 15 Sep 2017 16:50:04 +0000 (UTC)
Date: Fri, 15 Sep 2017 09:50:03 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: Android: follow coding
 guidlines
Message-ID: <20170915165003.GF27343@kroah.com>
References: <20170913171234.GA4052@manoharreddy>
 <alpine.DEB.2.20.1709132210210.2920@hadrien>
 <df162e84-1763-4fc6-8d3d-8aee1151f515@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <df162e84-1763-4fc6-8d3d-8aee1151f515@googlegroups.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 15, 2017 at 12:02:15AM -0700, Keerthi Reddy wrote:
> I would like to ask will this patch�be merged into Greg's Staging driver
> development tree? If not what kind of what of patches will be merged into
> Greg's tree?

I am at a conference all this week so I will resume review of staging
patches next week, sorry for the delay...

greg k-h

