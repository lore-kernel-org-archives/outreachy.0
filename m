Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FAC286430
	for <outreachy@lists.linux.dev>; Thu, 18 Sep 2025 05:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172747; cv=none; b=srdOcfznrq3CzS3IDG1fBL2eQKk9gu1hu2MCGTZzozPJxqBCm+e+liVT0wRZ2ZAQTfqRX1JZPDXp7/Df2qeAQlkxUalwvcLsnzwNdqAQ3YJBShn/6CRv9Cu+QqLK/B5Yr0qRzrjK7HWPnjood0ZIyCFolKvFuTHU643cn/HNcn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172747; c=relaxed/simple;
	bh=bjYOxWofn0iEeBGemYRhMVFaffbUVbO93PyKuFvMdWo=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MuGZ9RSGJDadyTCPuKr0cpWtLjUe2pz7Sjs1B95ACfzLTiM2n91I9hZXvE9Hv1718UrqDcTfITJRnECzBnYFxNx9fYMMzSpQ4rb6+aDwgLVktxpNcs0ad3GwDb6FK1/ZHbrGyNaKnBBG1vFqbLt/pJJM1YgxkYJ2bcV6JYJGEw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PHck5vBo; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PHck5vBo"
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3e8123c07d7so709079f8f.0
        for <outreachy@lists.linux.dev>; Wed, 17 Sep 2025 22:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758172743; x=1758777543; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjYOxWofn0iEeBGemYRhMVFaffbUVbO93PyKuFvMdWo=;
        b=PHck5vBo5Of/DxPCHiwTj/2ckN/e372TWzgWhz8q2U7sNxSZp/KwDg07d1aeajr0J/
         X+Hc2sv5r915pnE55bL7oHI1cNsbmzs1LE2ahNLAOjIdzGefbXWzVLl2xPDGb1SfOKVo
         eDrPlJq2xMyOr9Uu2rMWrmxTeBD/j1+LZRVV+FpNOfc6Htov41bLWtPemoWLYLfjeuO/
         SBUs4yufHqd6AUFh50Eh3C6MteFLwPTtUw5K+jRSxiyePIUeveNObgt+2s6PkddebxFT
         CGYZDbGB2o/iSzKsVyCKAvAgjszsI3V8QnxF4ySi580W5sRJ1UUf2ETkZ1jTw+MXdFyG
         SczQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758172743; x=1758777543;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bjYOxWofn0iEeBGemYRhMVFaffbUVbO93PyKuFvMdWo=;
        b=Ydk8hJ7BhbMc0lfHvLPtErdUq81yt0HnGl6RGUAUFD8pzRx+xwhNiqrHhJ48d62cdD
         4HElHKSSM4MDtl7QIAC4ulcuHVFt6jB1zrxJUAUj/nezbe6hZ0gG47fUGzbn8MSNAvw+
         SpWcIiB2Nh5KXLlgMKmoKe6NRgc5jt3eAgiaccSfn0kMyl9o2V0a2qPluuevGrzWXIzw
         b3QIyUfSK4YYiWZUei6kCZE/uTlc57Y1SSG78/Z4ZowPGnvPvVpn0i1p6CeQ3ZRjCH0b
         TQZngyUlvgh9UVhFzC7q0YtdOAd7l1BhrQSLYEG1lyDRNPhWUoNjK3HM+PM0C3fWbAdn
         NGzw==
X-Forwarded-Encrypted: i=1; AJvYcCUvUAyUdMIeirEBP9mXSY0s1iix9CWPsaQx54alLp7G/3tCJvoG2qMcYym98Bp9yMBhVrPPMRAfOw8=@lists.linux.dev
X-Gm-Message-State: AOJu0YxZDwVpDn2bNOeT9XtCxzZwesZ4/KYGmzG8zETbOevAVFJmPccK
	Nal2nVzj7+ZIb+edJnyEt95lLtmQgmRxaIzs7PB5oNksteYgr3tlVhxqTlCZ1hcr
X-Gm-Gg: ASbGncsrLUvfUoOi9/It5MCrBJb4pPiE8uKnWVvdGnfiGXu7QnVIK4kgz/J0MeWvL0u
	pVz75cj2H22/WYR1nEu3PovVQjUDwnz+O39LhEGo8iHhQqDy/F20hx55v2N1D3O5FNfx5nsRf02
	5gUWg9JyeBgrltlBC1TZQpGJz0ACqu4viMlAjxLvOFyjqsE9S5SHphK8K5McRB8WTu6znWDGKHV
	Ale4FPKWrW0dZvK16Lj3VT6zmTFqC69mxqzWz9k2WZCKDjsInK6uRinJXv2JE+sWBU2H9UB8SeM
	FYVXnM05KPs68RZHwnCWfFnfqG1+fy+AXFFpOTi8RAjqh5UMpcqzbbr7CWJ4iJOxgUPgT2YyBPl
	HsLmIiMugep8++MqCcaqHZEI+CGUgIp3B3SnL55mcUUwAwLH7bOkSJg==
X-Google-Smtp-Source: AGHT+IEtMsb3mt3t5Jl8thE+i4sdn5L1oTVhMfGKknm2fG0ku87VHY/SDtIxQc7cDePRFIYzuHtotQ==
X-Received: by 2002:a05:6000:184b:b0:3ec:42f9:952b with SMTP id ffacd0b85a97d-3edd43b6c15mr1307850f8f.4.1758172743270;
        Wed, 17 Sep 2025 22:19:03 -0700 (PDT)
Received: from [192.168.100.3] ([105.163.156.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fbf20b9sm1953594f8f.57.2025.09.17.22.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 22:19:01 -0700 (PDT)
Message-ID: <daae5eaf75131d76d541285b4225bbe92967ec9e.camel@gmail.com>
Subject: Re: Kernelnewbies help
From: Erick Karanja <karanja99erick@gmail.com>
To: Your Name <miguelonrm1@gmail.com>, outreachy@lists.linux.dev
Date: Thu, 18 Sep 2025 08:18:47 +0300
In-Reply-To: <aMuGpG_wqdm_LOOi@miguel-linux>
References: <aMuGpG_wqdm_LOOi@miguel-linux>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

T24gV2VkLCAyMDI1LTA5LTE3IGF0IDIxOjEyIC0wNzAwLCBZb3VyIE5hbWUgd3JvdGU6Cj4gSGks
IAo+IEkgYW0gcmVzZW5kaW5nIGl0IGluIHBsYWluIHRleHQuCj4gCj4gbWlndWVsQG1pZ3VlbC1s
aW51eDp+L2dpdC9rZXJuZWxzL3N0YWdpbmckIGFwdCBsaXN0IC0taW5zdGFsbGVkIHwKPiBncmVw
IGxpYmR3YXJmLWRldgo+IAo+IFdBUk5JTkc6IGFwdCBkb2VzIG5vdCBoYXZlIGEgc3RhYmxlIENM
SSBpbnRlcmZhY2UuIFVzZSB3aXRoIGNhdXRpb24KPiBpbiBzY3JpcHRzLgpIZWxsbywgSSB3b3Vs
ZCByZWNvbW1lbmQgeW91ciBjb25maWd1cmUgeW91ciBlbWFpbCBjb3JyZWN0bHksIEl0IHNlZW1z
Cm5vdCBvay4gcGxhY2UgeW91IGFjdHVhbCBuYW1lClJlZ2FyZHMuCj4gbGliZHdhcmYtZGV2L25v
YmxlLWFwcHMtc2VjdXJpdHksbm93IDIwMjEwNTI4LTF1YnVudHUwLjI0LjA0LjF+ZXNtMQo+IGFt
ZDY0IFtpbnN0YWxsZWRdCj4gCj4gCj4gbWlndWVsQG1pZ3VlbC1saW51eDp+L2dpdC9rZXJuZWxz
L3N0YWdpbmckIGFwdCBsaXN0IC0taW5zdGFsbGVkIHwKPiBncmVwIGxpYmVsZi1kZXYKPiAKPiBX
QVJOSU5HOiBhcHQgZG9lcyBub3QgaGF2ZSBhIHN0YWJsZSBDTEkgaW50ZXJmYWNlLiBVc2Ugd2l0
aCBjYXV0aW9uCj4gaW4gc2NyaXB0cy4KPiAKPiBsaWJlbGYtZGV2L25vYmxlLXVwZGF0ZXMsbm9i
bGUtc2VjdXJpdHksbm93IDAuMTkwLTEuMXVidW50dTAuMSBhbWQ2NAo+IFtpbnN0YWxsZWRdCj4g
bWlndWVsQG1pZ3VlbC1saW51eDp+L2dpdC9rZXJuZWxzL3N0YWdpbmckCj4gCj4gCj4gVGhhbmtz
LAo+IE1pZ3VlbAo+IAo+IAo+IAo+IMKgwqDCoCBFbCBtacOpLCAxNyBzZXB0IDIwMjUgYSBsYXMg
MjA6NTQsIEVyaWNrIEthcmFuamEKPiAoPGthcmFuamE5OWVyaWNrQGdtYWlsLmNvbT4pIGVzY3Jp
YmnDszoKPiAKPiDCoMKgwqDCoMKgwqDCoCBPbiBXZWQsIDIwMjUtMDktMTcgYXQgMTg6MjUgLTA3
MDAsIE1pZ3VlbCBSb2Ryw61ndWV6IHdyb3RlOgo+IMKgwqDCoMKgwqDCoMKgID4gSGkgdGhlcmUs
IEkgYW0gZm9sbG93aW5nIHRoaXMgdHV0b3JpYWwKPiDCoMKgwqDCoMKgwqDCoCA+IGh0dHBzOi8v
a2VybmVsbmV3Ymllcy5vcmcvT3V0cmVhY2h5Zmlyc3RwYXRjaFNldHVwCj4gwqDCoMKgwqDCoMKg
wqAgPgo+IMKgwqDCoMKgwqDCoMKgID4gV2hlbiBydW5uaW5nIHRoZSBzdGVwwqAgIkJ1aWxkaW5n
IHRoZSBrZXJuZWwiLCBJIGFtIGdldHRpbmcKPiB0aGUgZXJyb3I6Cj4gwqDCoMKgwqDCoMKgwqAg
Pgo+IMKgwqDCoMKgwqDCoMKgID4gSE9TVENDwqAgc2NyaXB0cy9nZW5kd2FyZmtzeW1zL2dlbmR3
YXJma3N5bXMubwo+IMKgwqDCoMKgwqDCoMKgID4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tCj4gc2Ny
aXB0cy9nZW5kd2FyZmtzeW1zL2dlbmR3YXJma3N5bXMuYzoxMjoKPiDCoMKgwqDCoMKgwqDCoCA+
IHNjcmlwdHMvZ2VuZHdhcmZrc3ltcy9nZW5kd2FyZmtzeW1zLmg6NjoxMDogZmF0YWwgZXJyb3I6
Cj4gZHdhcmYuaDogTm8KPiDCoMKgwqDCoMKgwqDCoCA+IHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkK
PiDCoMKgwqDCoMKgwqDCoCA+wqDCoMKgwqAgNiB8ICNpbmNsdWRlIDxkd2FyZi5oPgo+IMKgwqDC
oMKgwqDCoMKgID7CoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoCBefn5+fn5+fn4KPiDC
oMKgwqDCoMKgwqDCoCA+IGNvbXBpbGF0aW9uIHRlcm1pbmF0ZWQuCj4gwqDCoMKgwqDCoMKgwqAg
PiBtYWtlWzNdOiAqKiogW3NjcmlwdHMvTWFrCj4gwqDCoMKgwqDCoMKgwqAgPgo+IMKgwqDCoMKg
wqDCoMKgID4KPiDCoMKgwqDCoMKgwqDCoCA+IENhbiBhbnlvbmUgaGVscCBtZSBrbm93IHdoeSBp
dCBpcyBmYWlsaW5nPwo+IMKgwqDCoMKgwqDCoMKgIEhlbGxvLCBoYXZlIHlvdSBpbnN0YWxsZWQg
dGhpcyBsaWJyYXJpZXMKPiDCoMKgwqDCoMKgwqDCoCBsaWJkd2FyZi1kZXYgYW5kIGxpYmVsZi1k
ZXY/Cj4gwqDCoMKgwqDCoMKgwqAgPiBJIGFtIHVzaW5nIFVidW50dToKPiDCoMKgwqDCoMKgwqDC
oCA+ICQgdW5hbWUgLWEKPiDCoMKgwqDCoMKgwqDCoCA+IExpbnV4IG1pZ3VlbC1saW51eCA2LjE0
LjAtMjktZ2VuZXJpYyAjMjl+MjQuMDQuMS1VYnVudHUgU01QCj4gwqDCoMKgwqDCoMKgwqAgPiBQ
UkVFTVBUX0RZTkFNSUMgVGh1IEF1ZyAxNCAxNjo1Mjo1MCBVVEMgMiB4ODZfNjQgeDg2XzY0Cj4g
eDg2XzY0Cj4gwqDCoMKgwqDCoMKgwqAgPiBHTlUvTGludXgKPiDCoMKgwqDCoMKgwqDCoCA+Cj4g
wqDCoMKgwqDCoMKgwqAgPgo+IMKgwqDCoMKgwqDCoMKgID4KPiDCoMKgwqDCoMKgwqDCoCA+IFRo
YW5rIHlvdSwKPiDCoMKgwqDCoMKgwqDCoCA+IE1pZ3VlbAo+IMKgwqDCoMKgwqDCoMKgID4KPiDC
oMKgwqDCoMKgwqDCoCA+IAo+IAo+IAo+IAo+IAoK

