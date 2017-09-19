X-GM-THRID: 6467514574021066752
X-Received: by 10.223.133.244 with SMTP id 49mr151121wru.22.1505835658772;
        Tue, 19 Sep 2017 08:40:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.138 with SMTP id v132ls2240289wmf.25.gmail; Tue, 19 Sep
 2017 08:40:57 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB+Ld2lLWcS6Dj2T12VCKB9nKxD1+VCH9GQvn3aCtTOMOPC/iYkT6XNOeZnZwE0GGDU19fK
X-Received: by 10.28.68.135 with SMTP id r129mr163713wma.19.1505835657805;
        Tue, 19 Sep 2017 08:40:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505835657; cv=none;
        d=google.com; s=arc-20160816;
        b=twf+jeKVq/lKah8me0Axx34hKti/+vDAmRQCrohEvQrbgn+JJCa7wV8iopvLjUcen+
         xTBCraDbWNc6/siv7Eh1HbTFh0tb9H7io7dZU9V+BgxU67BO1EOIA3rVZ+biUnFtBVqG
         zcZAKATqyV8txPG19Fgu9NLl6lWryxZxQ20GuRmG6rk7hrzMPqcu20DsfZyXLb3BmvIr
         rx7Fn9o/vZI27FYxP0ViH3elMQ2nRR1eDaBck4bHKdG67IcSqBHm5B34jJWaPchmxRMz
         Gye+CA2cL3wKTV/tWJWNSVgPrPdlg6IDZ4EqOXIthkoYuVTr6/udUt/vk1kh2BaRm6vD
         ZFkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=vvMqK0BOA/LiX9LhKzGeFfwSmBA5VSPN0AvcvhbaqSk=;
        b=lGrpEz1DEGfyVAAvHDS2kT/63Ctv4Mpf/LYrC7Gw9ZO4kOuNwfM9VE1aDWsi9NoMbp
         YaqBaYGHNFCNtjzlBd8C+lUob7M42BHeDE2aDyDrbH7QpMBGEmVa3Gfr21r1DreLaiVf
         ReTdhOWoU1iVTHrl03HB2Rk2gMrXOu2WpVOk5iEnbYwbdyGwqvLKx/ePMA0ZqbQLtIju
         qICk4JbGWKM0UOk8yzyPhRaqKbawLuA74XQg+hFn+NQug7pPT8/T4lULBSlrrFyznNQA
         FY3x4sjeyWQf1UNSF8qWSlqqlALg+lWZUkls6YEoNTnyyJJPu2WqId8cbijsN5xdVDis
         +04w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si258351wmd.1.2017.09.19.08.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Sep 2017 08:40:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
X-IronPort-AV: E=Sophos;i="5.42,418,1500933600"; 
   d="scan'208";a="291807358"
Received: from unknown (HELO var.youpi.perso.aquilenet.fr) ([193.50.110.180])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/AES256-GCM-SHA384; 19 Sep 2017 17:40:57 +0200
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.89)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1duKds-00036J-Cz; Tue, 19 Sep 2017 17:40:56 +0200
Date: Tue, 19 Sep 2017 17:40:56 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 00/12] staging: lustre: fix code styling issues and
 remove macros without users
Message-ID: <20170919154056.nsvmwgnscupdqr4u@var.youpi.perso.aquilenet.fr>
References: <cover.1505834825.git.aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505834825.git.aastha.gupta4104@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Hello,

It seems the recipients of your mail are not appropriate: we develop the
speakup driver, not the lustre driver.

Samuel

Aastha Gupta, on mar. 19 sept. 2017 21:09:12 +0530, wrote:
> These patches fix: 
> - multi line comment styling 
> - line over 80 characters 
> - macro definitions warnings by checkpatch.pl 
> - drops macros without any users 
> - Comparisons should place the constant on the right side
> 
> This patch series includes all the patches I sent for this driver to
> show the correct order.
> 
> Aastha Gupta (12):
>   staging: lustre: fix incorrect multi-line comment style
>   staging: lustre: fix comparisons should place the constant on the
>     right side
>   staging: lustre: fix macro definitions warnings
>   staging: lustre: drop macro that has no uses
>   staging: lustre: put trailing */ on separate line
>   staging: lustre: fid: fix line over 80 characters
>   staging: lustre: fld: fix line over 80 characters
>   staging: lustre: ldlm: fix lines over 80 characters in ldlm files
>   staging: lustre: llite: fix lines over 80 characters in llite files
>   staging: lustre: llite: fix identation in dir
>   staging: lustre: lllite: fix multi line comments alignment in file
>   staging: lustre: llite: fix multi line comments style
> 
>  drivers/staging/lustre/lustre/fid/fid_request.c    |  3 +-
>  drivers/staging/lustre/lustre/fld/fld_request.c    |  3 +-
>  drivers/staging/lustre/lustre/include/lu_object.h  | 18 ++++----
>  .../lustre/lustre/include/lustre_dlm_flags.h       |  6 ++-
>  .../staging/lustre/lustre/include/lustre_errno.h   | 51 ++++++++++++++--------
>  drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  3 +-
>  drivers/staging/lustre/lustre/ldlm/ldlm_flock.c    |  6 ++-
>  drivers/staging/lustre/lustre/ldlm/ldlm_internal.h |  4 +-
>  drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     | 33 +++++++++-----
>  drivers/staging/lustre/lustre/ldlm/ldlm_lockd.c    |  6 ++-
>  drivers/staging/lustre/lustre/ldlm/ldlm_pool.c     |  6 ++-
>  drivers/staging/lustre/lustre/ldlm/ldlm_request.c  | 41 ++++++++++-------
>  drivers/staging/lustre/lustre/ldlm/ldlm_resource.c |  3 +-
>  drivers/staging/lustre/lustre/llite/dcache.c       |  9 ++--
>  drivers/staging/lustre/lustre/llite/dir.c          | 24 ++++++----
>  drivers/staging/lustre/lustre/llite/file.c         | 16 ++++---
>  .../staging/lustre/lustre/llite/llite_internal.h   | 25 +++++++----
>  drivers/staging/lustre/lustre/llite/llite_lib.c    | 45 ++++++++++++-------
>  drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 +-
>  drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 +-
>  drivers/staging/lustre/lustre/llite/namei.c        | 24 ++++++----
>  drivers/staging/lustre/lustre/llite/rw.c           | 15 ++++---
>  drivers/staging/lustre/lustre/llite/rw26.c         |  3 +-
>  drivers/staging/lustre/lustre/llite/statahead.c    | 18 +++++---
>  drivers/staging/lustre/lustre/llite/super25.c      |  3 +-
>  drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 +-
>  26 files changed, 242 insertions(+), 132 deletions(-)
> 
> -- 
> 2.7.4
> 

-- 
Samuel
How do I type "for i in *.dvi do xdvi i done" in a GUI?
(Discussion in comp.os.linux.misc on the intuitiveness of interfaces.)

