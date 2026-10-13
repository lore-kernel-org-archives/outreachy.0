Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89ACA4A7C95
	for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 21:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791927861; cv=none; b=HXr6Rg+73OytPyhJMsC+xxcQktC5KWiz9xH3knq1UousABUEwKQMeRm9mShcFjVXSzQ8LWiXNcBOqux2sOE7GknEwJXBGHlwNYJPv1Z1VPtczt8PzhZqGQ9Hgb1+rmeYc2ULmKgJ23p6TRsYzDdGoZ/VrM1umKxw8QKAhU+I7pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791927861; c=relaxed/simple;
	bh=VBIp6GxXms2kupMP5UWfIg3cv4VcQ6kzsVtKDA2e7kI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fWLB2ZW3gSqZ90SnaYo2rr5oXwZ9Y+133qYRRXPvvFd9pPZMuS5mSDCw8dE6PiHSrGKysmBWCEf6BmFiqJHjkN/BLwWEuTiKW7oATL/D0r9zteWRMv3JyWVhq7LC5tWp7gQ8UiCOtQlVknh5CVUmR/1trAPv0BCWa0JzttWfgtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y7l1hW3l; arc=none smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y7l1hW3l"
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-35c76e9614aso1381575eec.0
        for <outreachy@lists.linux.dev>; Tue, 13 Oct 2026 14:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791927858; x=1792532658; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IOLHY7dL34AVKprVE1Dtl4uoSXssNyajFIK5m/t8QSw=;
        b=Y7l1hW3l/f7nPngPC+ruFvBjCOGWpC0JAiSeaKXKflOQXTEcZsJgBBH4v9+vpE5FSa
         sjxhTf3B4Sh5aYgKliiLqVsPuJBM3Zu2DxirBG/hy2poDMBLrDTrwoTC3rYMNGBCst3G
         Z22Ym5tVcdpAQv6b6dWE/1rGjxxwDMSu8c4ezWd19AETYpL62jx46YthxQLgiFIurn+/
         0WuVlLPCvrckEI8Ph6gagfmb+uYSWUhiZ/xtsgiaLLAfJwR0jaKC4dG0sXI5V1xTbl3V
         hu7JOZDxy4kyMrLvD4Wvc1pSESUYQifinY6qf7ncgxqgeuMMsV2VfzlThF+CZ5gCtTuG
         W4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791927858; x=1792532658;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IOLHY7dL34AVKprVE1Dtl4uoSXssNyajFIK5m/t8QSw=;
        b=DVpTJ1hra5I7Su9NUWQuOFFiFa73ehV01XMcemjDeXNxNhxv69Yj4RpA3b1RYAMbFE
         AJOZmA40Jq7UYgONvYu6XKttB2uOa/u9geeo4CNR30KoL1rCB2xVghWu2m6xhOtUjYM3
         TI9r/so5MrikwY4YfQewD2atPB7jjBWQReUebF218fhP4Gbx9lQHKEc7wlSmV8S61CQY
         0S99aHJTFxJ0gM2S/6Oo4EPNzYfyIagNZZCWwv+YXUB3VFlNfixr18PQkIsCb26nQqsc
         hae6hN3j/upON5STxPJFEYfGSahbrmiCAkzZf8WV/ouNucs6DlCwYm4I0ZPYkRqo8S0M
         Fc6g==
X-Forwarded-Encrypted: i=1; AKwUvBxkCLQ35li312E5Tcga9piDcxefQXRwOwNDH1Dj4agDvuTPoZBVhFpHLhnbBi2oLeVGbfMftPUj8q4=@lists.linux.dev
X-Gm-Message-State: AFq9FYLhA7L+Mts7h5kSoMaHWf3zPl1IF5k3BxUqkfuL1n0qr/20z3TP
	tMBQcWHdH31yt6RAitF87OcW9cG7gNrYt+Jih7pP3g/PTI8rOL98h+10
X-Gm-Gg: AYBFou0A92zIN5RF/2BK4o7gmw4dHMLCFl0JS1TZTNF8ZVDP3F355+uE/EDMNao1ieB
	1yZ1+VaByE+73vXlFNrBFa/VcE+4EI1aOIszIktLRypWiDzjwq4LmxECD8WgBKB/BdrtP/rXN8k
	bDDGwBB86gmfn40ORUO6C/wNklTQozrGGwguDrHfsTjY6pBqvbI7ARXBjOtB3Rfmw2v6E0ATuuX
	2mHG8lH4trvHCGPJTlvJPhf3qe4IzyQdaz4vLJzOLMWUoci6XjMQ+9A5+vAanCKGwMzup9fT0dC
	mYcv/ULVZtXtPTvGry/eLrfFL7gzHJHJoA5VgeKNYNNOYhckjDrFKfW+3axyn6AgHJ733bYSbxc
	RNTMG3bv9pbG1IAxFYTsqxrXhLd3OXZmIsWBLNE/iWVhhi7L3mQ5DzICV6rv5IbcNUUv8nzB6A8
	H3T/uFgRCEt8P/08HTidxFeRsuqQaKG9+PeLf/mx0DXH3nQBeZYHDjoerlqHJEZMEWyC4bZH3yW
	8eQDJK7KwObmpM=
X-Received: by 2002:a05:701b:2089:20b0:14a:d8fe:33a4 with SMTP id a92af1059eb24-16a60de40ffmr21156321c88.38.1791927857405;
        Tue, 13 Oct 2026 14:44:17 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:7482:1179:c0d4:b9cc])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a2f17feasm52932676c88.9.2026.10.13.14.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 14:44:16 -0700 (PDT)
Date: Wed, 14 Oct 2026 03:13:39 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: Alex Elder <elder@ieee.org>
Cc: johan@kernel.org, gregkh@linuxfoundation.org, vireshk@kernel.org,
	elder@kernel.org, greybus-dev@lists.linaro.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev, gservice341@gmail.com
Subject: Re: [PATCH v2] staging: greybus: replace PTR_ERR() with %pe in error
 messages
Message-ID: <as6mC7sZnpqIKxN6@user>
References: <20261013022402.6322-1-pavankumaryalagada@gmail.com>
 <2fd23f9b-7eab-4afd-aa77-93a5b9ff0c75@ieee.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2fd23f9b-7eab-4afd-aa77-93a5b9ff0c75@ieee.org>

On Tue, Oct 13, 2026 at 03:11:51PM -0500, Alex Elder wrote:
> On 10/12/26 9:24 PM, pavankumaryalagada@gmail.com wrote:
> > From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> > 
> > Use %pe to print error pointers directly and display their
> > error names.
> > 
> > Keep the other PTR_ERR() call because its return value is
> > needed for ret.
> > 
> > Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> 
> Generally I think what you're doing is OK.  It looks
> like %pe is better than just %d, because it prints
> the error *name* for the pointer-coded error.
> 
> But I have two general questions about this effort:
> 
> - There are other places in the Greybus code (even in
>   just the staging source files) where this exact same
>   thing could be done.  Why limit this to "fw-core.c" only?

I initially limited the change to "fw-core.c" because I was
focusing on the error messages in that file.

> 
> - Do you think that all Greybus error messages should be
>   converted to use %pe (passing ERR_PTR() if necessary)
>   instead of %d for showing the error number?

Using %pe prints the error name instead of just the
error number, which makes the error messages easier
to understand.

For example, the current message is:

	failed to create download connection (-12)

with %pe, it becomes:

	failed to create download connection (-ENOMEM)

I think the second message is easier to understand because
it shows the error name instead of just error number.

I also found other PTR_ERR() calls in Greybus. some of them
are used to return error codes and should remain unchanged.

For example, in fw-core.c:

	if (IS_ERR(connection)) {
		ret = PTR_ERR(connection);
		dev_err(&bundle->dev,
			"failed to create management connection (%pe)\n",
			connection);
		goto err_destroy_connections;
	}

Here, PTR_ERR(connection) is needed to store the error code in ret
for the error-handling path, while passing connection to %pe makes
the error message more readable.

> 
> I think your suggested change is a net positive, but
> doing it in some spots but not others means it is
> adding a bit of inconsistency.

I agree that similar cases elsewhere in Greybus are worth
checking to keep error reporting consistent. I will look
at the other Greybus files for cases where using %pe would
be appropriate.

Would you prefer me to extend this change to the other
relevant Greybus files, or keep this patch focused on
fw-core.c and submit a separate patch for the remaining
changes?

Thanks for the suggestions.

Pavan
> 
> 					-Alex
> 
> > ---
> > v2:
> > - Use %pe in the firmware management case, as suggested by Jeremy Clifton,
> >    to match the other cases.
> > 
> > v1: https://lore.kernel.org/outreachy/as0nhVbagZa8Birm@user/T/#t
> > ---
> >   drivers/staging/greybus/fw-core.c | 16 ++++++++--------
> >   1 file changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/fw-core.c b/drivers/staging/greybus/fw-core.c
> > index 2016a74f137f..78321be80013 100644
> > --- a/drivers/staging/greybus/fw-core.c
> > +++ b/drivers/staging/greybus/fw-core.c
> > @@ -93,8 +93,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
> >   			if (IS_ERR(connection)) {
> >   				ret = PTR_ERR(connection);
> >   				dev_err(&bundle->dev,
> > -					"failed to create management connection (%d)\n",
> > -					ret);
> > +					"failed to create management connection (%pe)\n",
> > +					connection);
> >   				goto err_destroy_connections;
> >   			}
> > @@ -112,8 +112,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
> >   			connection = gb_connection_create(bundle, cport_id,
> >   							  gb_fw_download_request_handler);
> >   			if (IS_ERR(connection)) {
> > -				dev_err(&bundle->dev, "failed to create download connection (%ld)\n",
> > -					PTR_ERR(connection));
> > +				dev_err(&bundle->dev, "failed to create download connection (%pe)\n",
> > +					connection);
> >   			} else {
> >   				fw_core->download_connection = connection;
> >   			}
> > @@ -131,8 +131,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
> >   			connection = gb_connection_create(bundle, cport_id,
> >   							  NULL);
> >   			if (IS_ERR(connection)) {
> > -				dev_err(&bundle->dev, "failed to create SPI connection (%ld)\n",
> > -					PTR_ERR(connection));
> > +				dev_err(&bundle->dev, "failed to create SPI connection (%pe)\n",
> > +					connection);
> >   			} else {
> >   				fw_core->spi_connection = connection;
> >   			}
> > @@ -149,8 +149,8 @@ static int gb_fw_core_probe(struct gb_bundle *bundle,
> >   			connection = gb_connection_create(bundle, cport_id,
> >   							  NULL);
> >   			if (IS_ERR(connection)) {
> > -				dev_err(&bundle->dev, "failed to create Authentication connection (%ld)\n",
> > -					PTR_ERR(connection));
> > +				dev_err(&bundle->dev, "failed to create Authentication connection (%pe)\n",
> > +					connection);
> >   			} else {
> >   				fw_core->cap_connection = connection;
> >   			}
> 
