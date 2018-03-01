X-GM-THRID: 6527357137219223552
X-Received: by 10.157.20.134 with SMTP id d6mr2216775ote.31.1519963959861;
        Thu, 01 Mar 2018 20:12:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.97 with SMTP id t30ls4975615ott.19.gmail; Thu, 01 Mar
 2018 20:12:39 -0800 (PST)
X-Received: by 10.157.82.173 with SMTP id f45mr2003761oth.1.1519963959088;
        Thu, 01 Mar 2018 20:12:39 -0800 (PST)
Received: by 10.202.63.86 with SMTP id m83msoia;
        Wed, 28 Feb 2018 21:25:16 -0800 (PST)
X-Google-Smtp-Source: AG47ELvcI9inAFuORS2R+PAYnKWMLPT3wgVNe2O4COSoJzJ5P/IJJe3uLGCFZ9ej8lt9AlqNm0ED
X-Received: by 10.107.136.213 with SMTP id s82mr442772ioi.92.1519881916726;
        Wed, 28 Feb 2018 21:25:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519881916; cv=none;
        d=google.com; s=arc-20160816;
        b=xgxM8J18kzHVX6aXIjhvXXq367ZEFuszYSWIHA26iI0Sg+OetPsYuVv2m59JUv0yRt
         V6FCUewxIFubuyhCf+SgyloLFrY4WK/4W1GWTv8XEagyy7X8raG3PAWm5e2jDX12S90E
         s7XL6ef+LC7tkky/x1zPATt4xPFKuvXNREk4N9C/bukvyeryXbaLnIE6fCD7kwp0c6AC
         W4e6gyJkS1RgGJRUkEsYJmztRchPHTSQry9tPjTBxaOkQa4DqKK94HcgycYh8g+f14XD
         b8W7tzkLOS/C2VM1jiZUib/gVwZ3SuqMevS7QNITGfo1I+uw5CUygkx6TQiZe9En0OtJ
         oevw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=nhHWMOmVgGps/TSTWmnGrOx41u2nPMMmzUIpQ/8Uyxk=;
        b=tVYfkSZqkQIObG23qAPICtZBeFup4ZXJA+MplJTJL9ckhExa1SlHT16vYJKQNc62c0
         ElifMghZQKad2weQrVZleys8tNJ9Ystw8uoXBIByY2XavgutcLC5ovwWCk7/CACFffGA
         bRu1BXD6HPSYqH43yMn7lGTRa4rdWsZRRtnRb0zUi9rC3NTn5zpVaEaJrp60XP/UYI2z
         u39fsgxaWtQmssZ3hUXgcXih8noGbHpUXWsDLCHyQQyRi44RHIKZbtSwEWJoqO7NKrGO
         TaxLTIQ0X2Bgmb5ilzNmob05cvHTU5OA3tfm6PHgsWc1C/KOmdLcVQ/wVXNud54W+fX9
         YS3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yamada.masahiro@socionext.com designates 202.248.49.38 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Return-Path: <yamada.masahiro@socionext.com>
Received: from mx.socionext.com (mx.socionext.com. [202.248.49.38])
        by gmr-mx.google.com with ESMTP id x35si334389ioe.2.2018.02.28.21.25.16
        for <outreachy-kernel@googlegroups.com>;
        Wed, 28 Feb 2018 21:25:16 -0800 (PST)
Received-SPF: pass (google.com: domain of yamada.masahiro@socionext.com designates 202.248.49.38 as permitted sender) client-ip=202.248.49.38;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yamada.masahiro@socionext.com designates 202.248.49.38 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 01 Mar 2018 14:25:13 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
	by iyokan-ex.css.socionext.com (Postfix) with ESMTP id A9B9C6006F;
	Thu,  1 Mar 2018 14:25:13 +0900 (JST)
Received: from 10.213.24.1 (10.213.24.1) by m-FILTER with ESMTP; Thu, 1 Mar 2018 14:25:46 +0900
Received: from SOC-EX01V.e01.socionext.com (10.213.24.21) by
 SOC-EX01V.e01.socionext.com (10.213.24.21) with Microsoft SMTP Server (TLS)
 id 15.0.995.29; Thu, 1 Mar 2018 14:25:12 +0900
Received: from SOC-EX01V.e01.socionext.com ([10.213.24.21]) by
 SOC-EX01V.e01.socionext.com ([10.213.24.21]) with mapi id 15.00.0995.028;
 Thu, 1 Mar 2018 14:25:12 +0900
From: <yamada.masahiro@socionext.com>
To: <julia.lawall@lip6.fr>, <dafna3@gmail.com>
CC: <Gilles.Muller@lip6.fr>, <nicolas.palix@imag.fr>,
	<michal.lkml@markovi.net>, <outreachy-kernel@googlegroups.com>
Subject: RE: [PATCH] Coccinelle: memdup: Fix typo in warning messages
Thread-Topic: [PATCH] Coccinelle: memdup: Fix typo in warning messages
Thread-Index: AQHTsGnp++vOaewfS0+JbESeP6WwHqO62Wrw
Date: Thu, 1 Mar 2018 05:25:12 +0000
Message-ID: <91174f7725154a88a850ab6ce573b8d8@SOC-EX01V.e01.socionext.com>
References: <20180227215914.GA4522@gmail.com>
 <alpine.DEB.2.20.1802280856280.2657@hadrien>
In-Reply-To: <alpine.DEB.2.20.1802280856280.2657@hadrien>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-securitypolicycheck: OK by SHieldMailChecker v2.5.2
x-shieldmailcheckerpolicyversion: POLICY180220
x-originating-ip: [10.213.24.1]
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: base64
MIME-Version: 1.0

SGkgRGFmbmENCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKdWxpYSBM
YXdhbGwgW21haWx0bzpqdWxpYS5sYXdhbGxAbGlwNi5mcl0NCj4gU2VudDogV2VkbmVzZGF5LCBG
ZWJydWFyeSAyOCwgMjAxOCA0OjU4IFBNDQo+IFRvOiBEYWZuYSBIaXJzY2hmZWxkIDxkYWZuYTNA
Z21haWwuY29tPg0KPiBDYzogR2lsbGVzIE11bGxlciA8R2lsbGVzLk11bGxlckBsaXA2LmZyPjsg
bmljb2xhcy5wYWxpeEBpbWFnLmZyOw0KPiBtaWNoYWwubGttbEBtYXJrb3ZpLm5ldDsgWWFtYWRh
LCBNYXNhaGlyby8bJEI7M0VEGyhCIBskQj8/OTAbKEINCj4gPHlhbWFkYS5tYXNhaGlyb0Bzb2Np
b25leHQuY29tPjsgb3V0cmVhY2h5LWtlcm5lbEBnb29nbGVncm91cHMuY29tDQo+IFN1YmplY3Q6
IFJlOiBbUEFUQ0hdIENvY2NpbmVsbGU6IG1lbWR1cDogRml4IHR5cG8gaW4gd2FybmluZyBtZXNz
YWdlcw0KPiANCj4gDQo+IA0KPiBPbiBUdWUsIDI3IEZlYiAyMDE4LCBEYWZuYSBIaXJzY2hmZWxk
IHdyb3RlOg0KPiANCj4gPiBSZXBsYWNlICdrbWVtZGVwJyB3aXRoICdrbWVtZHVwJyBpbiB3YXJu
aW5nIG1lc3NhZ2VzLg0KPiANCj4gVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgY29tbWl0IGxvZy4g
IEJlY2F1c2UgSSBzdGFyZWQgYW5kIHN0YXJlZCBhdCBpdCBhbmQNCj4gY291bGRuJ3Qgc2VlIHRo
ZSBkaWZmZXJlbmNlIDopDQoNCg0KSSBjb3VsZCBub3QgZmluZCB0aGlzIHBhdGNoIGluIE1MLg0K
DQpQbGVhc2UgcmVwb3N0IGl0IHdpdGggdGhlIGZvbGxvd2luZyBNTCBpbiBUbyBvciBDQy4NCg0K
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KbGludXgta2J1aWxkQHZnZXIua2VybmVsLm9y
Zw0KDQoNClRoYXQgd2lsbCBiZSBoZWxwZnVsIGJlY2F1c2UgSSB1c3VhbGx5IHBpY2sgdXAgcGF0
Y2hlcw0KZnJvbSBwYXRjaHdvcmsuDQoNClRoYW5rcyENCg0KDQoNCg0KDQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBEYWZuYSBIaXJzY2hmZWxkIDxkYWZuYTNAZ21haWwuY29tPg0KPiANCj4gQWNr
ZWQtYnk6IEp1bGlhIExhd2FsbCA8anVsaWEubGF3YWxsQGxpcDYuZnI+DQo+IA0KPiA+IC0tLQ0K
PiA+ICBzY3JpcHRzL2NvY2NpbmVsbGUvYXBpL21lbWR1cC5jb2NjaSB8IDQgKystLQ0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4g
ZGlmZiAtLWdpdCBhL3NjcmlwdHMvY29jY2luZWxsZS9hcGkvbWVtZHVwLmNvY2NpDQo+IGIvc2Ny
aXB0cy9jb2NjaW5lbGxlL2FwaS9tZW1kdXAuY29jY2kNCj4gPiBpbmRleCAxMjQ5YjcyLi44ZmQ2
NDM3IDEwMDY0NA0KPiA+IC0tLSBhL3NjcmlwdHMvY29jY2luZWxsZS9hcGkvbWVtZHVwLmNvY2Np
DQo+ID4gKysrIGIvc2NyaXB0cy9jb2NjaW5lbGxlL2FwaS9tZW1kdXAuY29jY2kNCj4gPiBAQCAt
NTYsMTAgKzU2LDEwIEBAIHN0YXRlbWVudCBTOw0KPiA+ICBwIDw8IHIucDsNCj4gPiAgQEANCj4g
Pg0KPiA+IC1jb2NjaWxpYi5vcmcucHJpbnRfdG9kbyhwWzBdLCAiV0FSTklORyBvcHBvcnR1bml0
eSBmb3Iga21lbWRlcCIpDQo+ID4gK2NvY2NpbGliLm9yZy5wcmludF90b2RvKHBbMF0sICJXQVJO
SU5HIG9wcG9ydHVuaXR5IGZvciBrbWVtZHVwIikNCj4gPg0KPiA+ICBAc2NyaXB0OnB5dGhvbiBk
ZXBlbmRzIG9uIHJlcG9ydEANCj4gPiAgcCA8PCByLnA7DQo+ID4gIEBADQo+ID4NCj4gPiAtY29j
Y2lsaWIucmVwb3J0LnByaW50X3JlcG9ydChwWzBdLCAiV0FSTklORyBvcHBvcnR1bml0eSBmb3Ig
a21lbWRlcCIpDQo+ID4gK2NvY2NpbGliLnJlcG9ydC5wcmludF9yZXBvcnQocFswXSwgIldBUk5J
Tkcgb3Bwb3J0dW5pdHkgZm9yIGttZW1kdXAiKQ0KPiA+IC0tDQo+ID4gMi43LjQNCj4gPg0KPiA+
DQo=

