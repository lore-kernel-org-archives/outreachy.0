X-GM-THRID: 6465205340686254080
X-Received: by 10.159.60.24 with SMTP id u24mr99112uah.122.1505797262157;
        Mon, 18 Sep 2017 22:01:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.176.66 with SMTP id b2ls6400821itj.12.gmail; Mon, 18 Sep
 2017 22:01:01 -0700 (PDT)
X-Received: by 10.98.76.206 with SMTP id e75mr69212pfj.10.1505797261451;
        Mon, 18 Sep 2017 22:01:01 -0700 (PDT)
Received: by 10.202.166.5 with SMTP id p5msoie;
        Mon, 18 Sep 2017 16:05:48 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDbtkJgzx69hwHCmsnhU0T7TqYsLQ01asET16VMvD+m3Ia8cGHgOHye/km8geEGE3N1uWEw
X-Received: by 10.99.171.67 with SMTP id k3mr107083pgp.169.1505775947966;
        Mon, 18 Sep 2017 16:05:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505775947; cv=none;
        d=google.com; s=arc-20160816;
        b=sbVb6O1Hwj1bTjp+/Dc0saZH48c0w0WHpU6HvRn9jkN3ia1wg7Nfz1LlC7sN9Z8rwQ
         czZN/SVjoztP6c1t3UgR58k/31XlIDhaI010zkOhAncWNFeBPH75zw4oqecN9pldEaur
         PL//OmtKU8M3qr2ZJzrAAMGHzvoOo2FBaKRVxR/gSHcCfMjs8esSj2CA7Rg79RsjxA9l
         aO+lfDX0OZZf/cRKXTJMSjl9pLrEWkmQ2z+OCJOoOirn2btGqKw5pOBYGYS2kLlqVeVP
         AIsswenH1YTqhWpO5TwqRfeNas/TH6dCcGEgKC6cMePY4WciFAx/wKTQakzMfhytHJbc
         u3Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=jWAiLaODT5hvzGHffCTOnPyPE07mw3XDrWOmiB4oKQU=;
        b=fT877+yTxPbMlNejGNFKYADBQvv7FfuIGQz9Pb7RiKJVPgTyJiUULNXbOUuzL+h4a3
         AcNr1bzH51urQPurEFGlVmqykGx4zsyY5P9vjsPGAE6qYHPGOKR9suOUps+RJ0tXjV3X
         trqvJQKo9DdY93AMzSHjEgir9y2PCUz/s4oikwWoeT5y0Xbe81hHDWJ0wRGVTzVBiNN4
         CaawpHbS+MNT1oBN/sVrgXsRno01IozoWogv6fh8+Hp9QUBkGZvoWOjImYxbIk+aVp/4
         rRKqyP7LXucv3kQFaHwGN+nW16c5adgQVm6z/mlybvvvecZSEVcv+7SmvzBKNvlZ88+b
         Oimw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.vetter@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=daniel.vetter@intel.com
Return-Path: <daniel.vetter@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id c200si65084pfb.14.2017.09.18.16.05.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 16:05:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.vetter@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.vetter@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=daniel.vetter@intel.com
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Sep 2017 16:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,415,1500966000"; 
   d="scan'208";a="1173500904"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
  by orsmga001.jf.intel.com with ESMTP; 18 Sep 2017 16:05:41 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.75]) by
 IRSMSX102.ger.corp.intel.com ([169.254.2.180]) with mapi id 14.03.0319.002;
 Tue, 19 Sep 2017 00:05:40 +0100
From: "Vetter, Daniel" <daniel.vetter@intel.com>
To: "meghana.madhyastha@gmail.com" <meghana.madhyastha@gmail.com>,
	"jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
	"julia.lawall@lip6.fr" <julia.lawall@lip6.fr>
CC: "seanpaul@chromium.org" <seanpaul@chromium.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] GPU: DRM: drm_agpsupport.c: Code
 cleanup
Thread-Topic: [Outreachy kernel] [PATCH 0/3] GPU: DRM: drm_agpsupport.c:
 Code cleanup
Thread-Index: AQHTLHmw2L8YL9XsJUamz9D+YbMPZ6KypFwAgAASBICACIUsAA==
Date: Mon, 18 Sep 2017 23:05:39 +0000
Message-ID: <1505775934.6581.6.camel@intel.com>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com>
	 <alpine.DEB.2.20.1709131352550.26484@hadrien> <87wp52iwl0.fsf@nikula.org>
In-Reply-To: <87wp52iwl0.fsf@nikula.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.186.107]
Content-Type: text/plain; charset="utf-8"
Content-ID: <91CCF237BDD7934A96BA5815A808CFFE@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDE3LTA5LTEzIGF0IDE1OjU4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAxMyBTZXAgMjAxNywgSnVsaWEgTGF3YWxsIDxqdWxpYS5sYXdhbGxAbGlwNi5mcj4g
d3JvdGU6DQo+ID4gT24gV2VkLCAxMyBTZXAgMjAxNywgTWVnaGFuYSBNYWRoeWFzdGhhIHdyb3Rl
Og0KPiA+IA0KPiA+ID4gVGhlc2UgcGF0Y2hlcyBmaXggdGhlIGNoZWNrcGF0aCB3YXJuaW5ncyBh
bmQgZXJyb3JzDQo+ID4gPiBpbiBkcm1fYWdwc3VwcG9ydC5jDQo+ID4gPiANCj4gPiA+IE1lZ2hh
bmEgTWFkaHlhc3RoYSAoMyk6DQo+ID4gPiDCoCBHUFU6IERSTTogTW92ZWQgRVhQT1JUX1NZTUJP
TCBzbyB0aGF0IGl0IGltbWVkaWF0ZWx5IGZvbGxvd2VkDQo+ID4gPiBpdHMNCj4gPiA+IMKgwqDC
oMKgZnVuY3Rpb24NCj4gPiA+IMKgIEdQVTogRFJNOiBSZXBsYWNlICJmb28gKiBiYXIiIHdpdGgg
ImZvbyAqYmFyIg0KPiA+ID4gwqAgR1BVOiBEUk06IFJlbW92ZSBhc3NpZ25tZW50IGluIGlmIGNv
bmRpdGlvbg0KPiA+ID4gDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fYWdwc3VwcG9ydC5j
IHwgNDEgKysrKysrKysrKysrKysrKysrKysrKy0tDQo+ID4gPiAtLS0tLS0tLS0tLS0tLS0tDQo+
IA0KPiBQbGVhc2UgdHJ5ICdnaXQgbG9nIC0tb25lbGluZSAtLSBkcml2ZXJzL2dwdS9kcm0vZHJt
X2FncHN1cHBvcnQuYycNCj4gYW5kDQo+IG9ic2VydmUgdGhlIGNvbW1pdCBzdWJqZWN0IHByZWZp
eCB1c2VkLiBQbGVhc2UgdHJ5IHRvIGZvbGxvdyB0aGUNCj4gc3R5bGUNCj4gaW4gdGhlIGFyZWEg
eW91J3JlIGNoYW5naW5nLCBub3Qgc29tZSBnZW5lcmljIHJ1bGVzLg0KPiANCj4gPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+
IEFyZSB0aGUgRFJNIHBlb3BsZSBnb2luZyB0byBwaWNrIHRoaXMgdXA/wqDCoEJlY2F1c2UgR3Jl
ZyB3aWxsDQo+ID4gbm90LsKgwqBJZiB5b3UNCj4gPiBkbyBzb21ldGhpbmcgdGhhdCBpcyBvdXRz
aWRlIHN0YWdpbmcgYXQgYSBtZW50b3IncyBzdWdnZXN0aW9uIGl0DQo+ID4gY291bGQgYmUNCj4g
PiBnb29kIHRvIG1ha2UgZXhwbGljaXQgdGhhdCB0aGUgbWVudG9yIHdpbGwgbWFrZSBzdXJlIHRo
YXQgdGhlIHBhdGNoDQo+ID4gd2lsbA0KPiA+IGJlIGFwcGxpZWQuDQo+IA0KPiBJJ20gbm90IGdl
bmVyYWxseSBmb25kIG9mIHB1cmUgY2hlY2twYXRjaCBmaXhlcywgYnV0IHBhdGNoIDMgYWxvbmUg
SQ0KPiB3YW50IGVub3VnaCB0byBwaWNrIHRoZW0gYWxsIHVwLiA7KQ0KPiANCj4gQnV0IHBsZWFz
ZSBkbyBzdWJtaXQgdGhlIHNlcmllcyB0byBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Lg0KPiBBcyBhDQo+IG1hdHRlciBvZiBwb2xpY3ksIHdlIGRvbid0IGFwcGx5IHBhdGNoZXMgbm90
IHBvc3RlZCB0byBvdXIgc3Vic3lzdGVtDQo+IG1haWxpbmcgbGlzdC4NCg0KWWVhaCwgc3R1ZmYg
bmVlZHMgdG8gZ28gdGhyb3VnaCBkcmktZGV2ZWwgd2hlbiBpdCdzIGEgZHJtIHBhdGNoIChvcg0K
YW55dGhpbmcgZWxzZSBpbiBkcml2ZXJzL2dwdSkuIFRoYXQncyB3aHkgd2UgZG9uJ3QgcmVjb21t
ZW5kIGl0IGZvciB0aGUNCnZlcnkgZmlyc3QgcGF0Y2ggKEkgZ3Vlc3MgSSBzaG91bGQgdXBkYXRl
IHRoZSB0ZXh0IGEgYml0LCBidXQgSSdtDQp0cmF2ZWxsaW5nIGFuZCBkb24ndCBoYXZlIGxvZ2lu
IGNyZWRzIG5lYXJieSkuDQotRGFuaWVsDQoNCj4gVGhlIHNjcmlwdHMvZ2V0X21haW50YWluZXIu
cGwgc2NyaXB0IHdpbGwgaGVscCB5b3Ugd2l0aCB0aGUgbGlzdHMsDQo+IGJ1dA0KPiBkbyB1c2Ug
ZGlzY3JldGlvbi4gVGhlIHNjcmlwdCBpcyBzb21ldGltZXMgbWlzZ3VpZGVkLCBhZGRpbmcgKndh
eSoNCj4gdG9vDQo+IG1hbnkgbGlzdHMgYW5kIHBlb3BsZS4gSnVzdCB0aGUgbWFpbiBzdWJzeXN0
ZW0gbGlzdCBhbmQNCj4gc3VwcG9ydGVycy9tYWludGFpbmVycyBhcmUgdXN1YWxseSBlbm91Z2gu
DQo+IA0KPiANCj4gVGhhbmtzLA0KPiBKYW5pLg0KPiANCj4gCkludGVsIFNlbWljb25kdWN0b3Ig
QUcKUmVnaXN0ZXJlZCBOby4gMDIwLjMwLjkxMy43ODYtNwpSZWdpc3RlcmVkIE9mZmljZTogQmFk
ZW5lcnN0cmFzc2UgNTQ5LCA4MDQ4IFp1cmljaCwgU3dpdHplcmxhbmQK


