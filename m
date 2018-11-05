X-GM-THRID: 6620380698493583360
X-Received: by 2002:a6b:df42:: with SMTP id d2-v6mr4941738iop.21.1541427562306;
        Mon, 05 Nov 2018 06:19:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:33c4:: with SMTP id k187-v6ls1439522itk.0.gmail; Mon, 05
 Nov 2018 06:19:21 -0800 (PST)
X-Google-Smtp-Source: AJdET5d+s0wITMr6mfwsYet/Qe1GUNiwhH/yt1dANMVZ7HO4DH2Q2CB7JuIZdBceQUgf5UXWBz1h
X-Received: by 2002:a24:5495:: with SMTP id t143-v6mr6234023ita.34.1541427561227;
        Mon, 05 Nov 2018 06:19:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541427561; cv=pass;
        d=google.com; s=arc-20160816;
        b=Plaj9y7n0WyRrC6RtB95i0kBQo0RGumzXkJgadeIei1BVeFf2jxlpOS+3mkhGMhM2/
         47ZMhrV9K+fsRQ4nFKLA45od1gA2aKj5jBrlnzLwv3K6sfHqcsbmvUsjk9QkaaGF/u5s
         thlwYYQWyGrKoJBzwLEd2Ynf0jrbB46l0SgH7Xx948lUoCE+ARu0Ht1rEmQ0OA36MBbr
         GbK+VPIcMvHGnGeshQah0bsKnW6fKid+M1HJJdIIOJwTmIkzqG2mf4mBYTkD9QYLCotf
         D11t1qWScrpBTnqN9tQbf9rJWOUw2K9yh9jWVpAVoazg9qiBX452nw7hjbbXucRJaJq4
         abYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9z3cy2iDYbTt6gkdmLyj/mrJSZ7Vh6wpwV671yF6M/U=;
        b=LQlRimxOvsD6kA8MiAKMAwiKc52NfpkKRPWR0ZnBZoxW0Jj/qtsDYPhr3CHhzk3+Wp
         W0Tmc5AjcPcp9ftmP3J7S8xs0q6BtqiscbWtIjW5RZKPbgYchiONwS/wLLtgo+12L/m9
         85+yoqKO+Rxnc2a4kWSrQOjNiXh1gT0OECTVVVG5GDuH/Eur6uJj2FJpd+vDZnH5Q/Wp
         YFzMzyEpqJ3iy8ocXlilBDkITCSILsMtwRWzKAssTGRXxbxmTFrDqNrlDCn0esDN5SKT
         ghY3iAm26IiZfzXpmZ/6jVVgiUgc9LZKVmPLND0b1j0bsmMNyUD4GjKhh4JR9sTmQfu/
         5OCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=IfKLnFxm;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id x6-v6si1712454iob.5.2018.11.05.06.19.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:19:20 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=IfKLnFxm;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541427557; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=Hqy36mvtWk5LJ66m5QR7t7TiDrAeVx+48BqsEHptb6JG4B4K9/1JWzFXh7CfK9yIQ21VH5F9IvyGioAdJXKhCfbXPmNEa+41bvbEEcg3/TQ3gapqx+OqsPCp8S1Lss+UdPtrgVMr6MxdN2i+mzx9fS1NDAoxxuYXtDXm0HGXT4g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541427557; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=9z3cy2iDYbTt6gkdmLyj/mrJSZ7Vh6wpwV671yF6M/U=; 
	b=PjzY7RmR9LkdzssLRV/YrEpYlMyF8Usrp+RTPtb2XQhUpd2DwBH9SMp5tjUgnVnhRxSuiS5CEshXc/q+0r4Mzup6Xa0DFwuQo5k03PCswcXJXBkfrzQW1MJ4M1hILRcR0zm35j4erk7tX3Iwbyr9jShDtxj/N2q6SlZvfPS5YjE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541427556;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=750; bh=9z3cy2iDYbTt6gkdmLyj/mrJSZ7Vh6wpwV671yF6M/U=;
	b=IfKLnFxmag6/2k/6mgWRnVSOTRTuQXLYf15JrGP+dT2rZeFJR6xlJyN99XFpcEOg
	0IeK+Figt1WYndvcZ/FLqwRpXPlzjLj1WqQ93Ud1etkrHqjnqon+gMdJ6Ib8raoe1GM
	wszUkKZfIdzUxuX+xbhe/xw9h449uzDOWknkDaKU=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541427555678700.6065644163782; Mon, 5 Nov 2018 15:19:15 +0100 (CET)
Date: Mon, 5 Nov 2018 14:19:14 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 05/14] staging: greybus Shorten comparison to NULL
Message-ID: <abb81a5c17d259dcd043049d3d77b704a364b437.1541427415.git.code@wizofe.uk>
References: <cover.1541427415.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541427415.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Shorten pointer NULL check by simple truth test
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
index d28773e06838..0ed3b0ffee5a 100644
--- a/drivers/staging/greybus/core.c
+++ b/drivers/staging/greybus/core.c
@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
 static const struct greybus_bundle_id *
 greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
 {
-	if (!id == NULL)
+	if (id)
 		return NULL;
 
 	for (; id->vendor || id->product || id->class || id->driver_info;
-- 
2.19.1



