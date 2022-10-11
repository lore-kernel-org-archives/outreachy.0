Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5122715AC
	for <outreachy@lists.linux.dev>; Tue, 11 Oct 2022 01:56:40 +0000 (UTC)
Received: by mail-vs1-f51.google.com with SMTP id p7so9605168vsr.7
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 18:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KPCCi4U6gWpJlWJSBVitlXQJBt5JpLWDVRF0Y8KWGSU=;
        b=DN7xPg8Iy0veSTKVdtC0fWFjowDhbo/BwEXJFRHxBZWP5fOXy7juWBU+WkxYr+/mpJ
         P0KPOlKzaIe0VqRzMEZiDAyUxK9abpdlIWj0g+gB4uJNNe8B10HJoqpaC/QJ68pelp8O
         BZRKHEF0U8LvpbmzTR+Fmvt5fqrnPKwqiL6hBkaxMSGidVYaKuZwXzpMApwbNf63WX2T
         aqTVYC/35Xls0QbDVGTxa8s/hdFcNsMs/Gg9kM2NWmpR5zjG+4DoG/UcYeNrzV2+n9Ww
         VpAoSSLexx7T61BVVuNKtY/9/XSkUb1gLHiBFVclPhUNwd7sywjiFm0pGFch8exUiSTB
         NnAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KPCCi4U6gWpJlWJSBVitlXQJBt5JpLWDVRF0Y8KWGSU=;
        b=ZA0ZaRwXB0Eki907WM8/2cg2tj3SjMUyRl4XVFS9ZdhyjKVRG2869S8Km0/Q80I5GR
         7DrsYO7y4pSUNSQ54wvdko6aKapOZK5KmIvTdO0MDydmXGu0xBQO9jAJqkXaWUZkJadu
         BYpZhCLJndqZGzjL34J5hJbAVUEBthJ76M5LOKMdqfzAJxJ6fjaXQe0dm5ioJiA/9mrE
         1rkUPM/7RhQZ7Q1q02koIQI5hewZFtXwDdRMRf7Vxpz+U/3q2c0Z0vd7mwXrj8jccCsI
         vMtY3bn9WAJhBCoLfWTCwOcxtVT2oDH0GyL6aktAkvdIKwZqtvNUBJv0d13u3Yh11lIx
         T/7g==
X-Gm-Message-State: ACrzQf3BDE1cz/WvwU9TAavvO3gtzgauJhNQsyfRzO+pltGn6JRmIWqy
	PPUhtTGpcCIb3vvKjHXGfq9lXA==
X-Google-Smtp-Source: AMsMyM47NavIKDISwcLuyTNkJrfIAoUV4x78boaL17qref3FstoITTxnxor4EHBw7TDLTpAmJF62gg==
X-Received: by 2002:a67:f793:0:b0:3a7:9a06:50de with SMTP id j19-20020a67f793000000b003a79a0650demr1987080vso.42.1665453399203;
        Mon, 10 Oct 2022 18:56:39 -0700 (PDT)
Received: from zeda ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id 98-20020a9f23eb000000b003b109ca97dbsm2720269uao.0.2022.10.10.18.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 18:56:38 -0700 (PDT)
Date: Mon, 10 Oct 2022 21:56:36 -0400
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v2 0/2] Staging: greybus: Fixed whitespace/syntax style
 issues
Message-ID: <Y0TNVMn1KBYjppFP@zeda>
References: <cover.1665430030.git.hunter.chasens18@ncf.edu>
 <Y0R/uscIGcUENEWx@aschofie-mobl2>
 <Y0SaG/h9IoCfB3tI@zeda>
 <Y0SwhNMLk9xh4v1H@aschofie-mobl2>
 <Y0THY2LgeHYZSaVt@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y0THY2LgeHYZSaVt@aschofie-mobl2>

I didn't know the 80-character limit applied to email as well! Thank you 
for telling me. I'm so used to auto-wrapping that it never occurred to me. 
I'm still getting used to mutt as well.

It is a bit overwhelming but it all seems very learnable with persistence and 
time. Sometimes it does feel like a game of whack-a-mole though. The moment I squash 
one issue is the moment my attention leaves another. :)
