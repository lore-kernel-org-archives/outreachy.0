Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AE35CB0
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 22:18:07 +0000 (UTC)
Received: by mail-vs1-f45.google.com with SMTP id l127so12588624vsc.3
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 15:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=898pdLD9BvPHPd1RjrkTJuC/HP3rxk4E0G4R+XEHDlQ=;
        b=iaZoRhOZHEXn2/A97J2dpPmrbBX1xKCBdk8FPj1jzRpxF12ryJtB62OxDwEWk3pWbM
         JxO9JBqa5Ww0FkapAL7gAvkTthD2/T+MCP4v8/lcpc1UIulhI2FJKrbhFVE0qNQOXfaC
         mmYUoyTagZwM9yVEXupv76xWSLZZB5KdPUk223eQdnP3udA3dBbTagz7q3j+rI0YauNv
         0fhxff5+f5JKVPJ2o6fxhf3D0vIkzpjncurKiksjI1LeIKnrRmxFl/5BzxdzrDQM31OA
         vPBcNo1WKFa516ZvWRvilbXYChB4lDvWBB73ARxLtirJydiM0CeOwggPqlAZZOpnDVwM
         f4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=898pdLD9BvPHPd1RjrkTJuC/HP3rxk4E0G4R+XEHDlQ=;
        b=eFTKAzTSvKEmiTVL88GRkvkbRrs+ZODpouVxlbcXqsLAAc/RISB8zprcrJpA0OK61q
         M7Xoa3D2ZH/QMYvEjtHWVnqaWvjA8AcuhkTWll2iy2ZFSrFWhCkq112fy+ATAziP2z3+
         RjQoJGHpfV/xUZSMEYa/THsGtUEsxQHi6CUNtJ6zwA76PPnyyvPpwtLEyxxtO1gPh7Jk
         22mUDOj+DMi+nSDbGZI8Au1ep+q2TrvO+S/NqY3qPqncnokhKh18Ohd4T+lBox8+bFeT
         qexeIuEYrYKmNgF7O7v+80YealI7a2wn+O1ziZK+5j7f9UXzdCJYD3vL+DN1CKdmSjTW
         mX1Q==
X-Gm-Message-State: ACrzQf2NMQfFX6Xa88uucl+GLZNwOex2I/pSbgJkE13SSWUJlw/umiFq
	wfMOoYmZjR6D3IuJ99A2RfXukbz84wbXkQ==
X-Google-Smtp-Source: AMsMyM6N1LjIpeHnEqNvtMKLJuLno2AH2qkVfQd/Hjhg5LBVDKb02m3rX5mlXwkFarcmFKzRyBttKQ==
X-Received: by 2002:a05:6102:2388:b0:3a7:9be7:a111 with SMTP id v8-20020a056102238800b003a79be7a111mr1437342vsr.70.1665440286045;
        Mon, 10 Oct 2022 15:18:06 -0700 (PDT)
Received: from zeda ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id q18-20020ab054d2000000b0039f5e106aa7sm2392986uaa.25.2022.10.10.15.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 15:18:05 -0700 (PDT)
Date: Mon, 10 Oct 2022 18:18:03 -0400
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2 0/2] Staging: greybus: Fixed whitespace/syntax style
 issues
Message-ID: <Y0SaG/h9IoCfB3tI@zeda>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
 <Y0R/uscIGcUENEWx@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0R/uscIGcUENEWx@aschofie-mobl2>

My apologies. I just felt very nervous about CCing the maintainers while the formatting of the patch and comments were still in the works. I'll be sure to do so in the v3. 
Thank you for your feedback. When running the get_maintainers script it shows the main LKML along with the mailing list for Staging. Should I also be CCing them, or just the indavidual maintainers? 
