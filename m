X-GM-THRID: 6616747745212366848
X-Received: by 2002:a0c:fac8:: with SMTP id p8mr438976qvo.32.1540881121415;
        Mon, 29 Oct 2018 23:32:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b995:: with SMTP id v21ls4323999qvf.12.gmail; Mon, 29
 Oct 2018 23:32:00 -0700 (PDT)
X-Received: by 2002:a0c:b79d:: with SMTP id l29mr14127997qve.53.1540881120867;
        Mon, 29 Oct 2018 23:32:00 -0700 (PDT)
Received: by 2002:a37:ae04:0:0:0:0:0 with SMTP id x4-v6msqke;
        Mon, 29 Oct 2018 23:15:32 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cYuQ3lJZgoTuZP3wFND6WftGRiimzZnagAZNnC+j8eewUifkszUKWLiQTAALc4oysqBE3z
X-Received: by 2002:a37:b3c1:: with SMTP id c184-v6mr14044255qkf.3.1540880132679;
        Mon, 29 Oct 2018 23:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540880132; cv=none;
        d=google.com; s=arc-20160816;
        b=WgpX0gLFImZFnZtpjBePlV7nlnnyxpi9YTExK9PsgI77oTFE6KOgIAfB4/tCtGn1pS
         maSD1z6npvnIz0Zeq7vNNZsLQ4R9WgzZmEOfFAdrIesn7tNnQ+kNvECaEt/CcrRIYZS0
         p/EuERrCkUsSNJoH+RJk74ohMOLyMHAXo2DlBQgYHRahMoHytZLUsNcjdGXo2TfjDei2
         3t29ScFdCIRDW1/RVvs/REReMYG96PY6BdBXzsOAL3vvr1McghOGaFIfEQnDJYaKstOx
         6Ag2M/ulb4+5nmDyYGbKNJmnn7dxbPhQ9mf5wvVqEMHVoeQ9V3TwLeaEUzyGnBhfV3DR
         9+Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=V5XsXTIpYBMgSCDCY9lYJpfpnh9QTefWOsyTVquXFGQ=;
        b=QuJbrbZJ96KlgiBpgPD7hWrgE0lcPZ7SZ8wuLdaD1hy+XdrlsrfXPKMrWqKdJRcTxZ
         dxHyXFEOUSUFh0b5rvifIcNcCiXYv2UcdD6bvJeWkAJRFM6jn1rRnGI5+IFyqQyN7BMT
         6SzOW++OBsGF3U4IRJcyT5FYAere1j0haXwKPbn6spuABxJdOAXO6Pid4S9ACpR7Y2OT
         eUJffToJETseRFar8ITzi6dplmA5or7QUzTqqGlWvMMSEcRhjv3vLrofSecVaZQpN99Z
         5/W8IAj96O7fp5P6x9KHKsctat5+KA6M44035HGDEqhsuCif6YcukJvR+tfO5eVJBCky
         EBng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of kraxel@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=kraxel@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <kraxel@redhat.com>
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id f6-v6si238428qkg.0.2018.10.29.23.15.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 23:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of kraxel@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of kraxel@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=kraxel@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E219FC049585;
	Tue, 30 Oct 2018 06:15:31 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-158.ams2.redhat.com [10.36.116.158])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9BAEF29363;
	Tue, 30 Oct 2018 06:15:31 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
	id A924EB3DC7; Tue, 30 Oct 2018 07:15:30 +0100 (CET)
Date: Tue, 30 Oct 2018 07:15:30 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
Cc: Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
	virtualization@lists.linux-foundation.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/6] drm/qxl: Remove checkpatch issues
Message-ID: <20181030061530.3npr2e3m6uwwxbza@sirius.home.kraxel.org>
References: <cover.1540579956.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540579956.git.shayenneluzmoura@gmail.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 30 Oct 2018 06:15:32 +0000 (UTC)

On Fri, Oct 26, 2018 at 04:20:30PM -0300, Shayenne da Luz Moura wrote:
> This series cleans the following checkpatch.pl issues:
> 
> ERROR: trailing whitespace
> WARNING: Missing a blank line after declarations
> CHECK: Please don't use multiple blank lines
> WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
> ERROR: space required before the open parenthesis '('
> CHECK: Avoid using bool structure members because of possible alignment issues

Patches queued up.

thanks,
  Gerd


