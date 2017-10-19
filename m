X-GM-THRID: 6477576827810349056
X-Received: by 10.99.95.84 with SMTP id t81mr157204pgb.133.1508410943212;
        Thu, 19 Oct 2017 04:02:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.108.66 with SMTP id h63ls1638892pgc.25.gmail; Thu, 19 Oct
 2017 04:02:22 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+T9sI+kHsl2BK/vZow2f4BR5CxEXQ3PVQv3sR7DrOQFXCROedlmHBEALao5w1XvrOqRRLL2
X-Received: by 10.99.107.199 with SMTP id g190mr155030pgc.3.1508410942008;
        Thu, 19 Oct 2017 04:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508410941; cv=none;
        d=google.com; s=arc-20160816;
        b=yDyk35dw+tG/tfCYoR4S0+Q4OgxqfBC8R0zEhJ8BS0YO8z2vgNBHHWzq2iVdFA+tBe
         MFCG8U0yUADKx7oRM5G1N7FXtEBF9TNQ/OgaQVNzK+RhMbPv1NxOii8moQhTVpv2kiNk
         A4y9n34i7G7W2/VVSacciw7UfSsTC7HlYQkpgvW4b70u1iwiqERk+0YCSPOPgMySCO2B
         Yu3+rBkNPYNLC82gdI/JrWKiVTyqPSsGaHwa6yrlI+T3xXJ5MZhmB156rqyJhxA/PGKx
         VZPRgMO2S09spn37vZCRLpGySajiWl3GFj8I72I/Zz3PyIw3FcY7X0ppTy7WJkhmk0ii
         LYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:arc-authentication-results;
        bh=uXkP/IHgD1ZYAom3JAUhx5BYZKgULRq4EGPY2/U347E=;
        b=kOoytWZsq5Y9kxZpRGnruf8AZAYeEzyxYjzC7zu/l6t2JMRaxIrrk9nW6Xd/jJYUZy
         7Ejmq7fRj7UIQ0z3390F3TPIiYGB89vQma8Gl+v9GjMeJG7MWEvSIXXaKBfr/wbJ/yKr
         tbsy4H+I/Ahac8N7ptpoIM0om0zCZ0CG1G2ElEA00PuFFLQu1HiJ4TU7NA1NvsdVuim1
         3bYYzEQhxftRj9k0lM7ILW0f7rFM8VD6wj5F6ZjA5tJoRhLCAqRChjw2L1zcIWVRE5YB
         uP4YKJjsTcEgn69po/llFcyd8sscUuHRkKbEEufuh8WfigK89alAmp2gUDTiibbPxq5X
         csBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fengguang.wu@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=fengguang.wu@intel.com
Return-Path: <fengguang.wu@intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id z123si712142pgz.5.2017.10.19.04.02.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 04:02:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of fengguang.wu@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of fengguang.wu@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=fengguang.wu@intel.com
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP; 19 Oct 2017 04:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,401,1503385200"; 
   d="gz'50?scan'50,208,50";a="162322018"
Received: from bee.sh.intel.com (HELO bee) ([10.239.97.14])
  by orsmga005.jf.intel.com with ESMTP; 19 Oct 2017 04:02:19 -0700
Received: from kbuild by bee with local (Exim 4.84_2)
	(envelope-from <fengguang.wu@intel.com>)
	id 1e58fi-0000sS-57; Thu, 19 Oct 2017 19:07:30 +0800
Date: Thu, 19 Oct 2017 19:02:03 +0800
From: kbuild test robot <lkp@intel.com>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: kbuild-all@01.org, Julia.Lawall@lip6.fr, pablo@netfilter.org,
	devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <201710191833.m6I7tC4e%fengguang.wu@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
In-Reply-To: <20171017014821.GA3282@ubuntu-server-1604>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: fengguang.wu@intel.com
X-SA-Exim-Scanned: No (on bee); SAEximRunCond expanded to false


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Frank,

[auto build test WARNING on staging/staging-testing]
[also build test WARNING on v4.14-rc5 next-20171018]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Frank-A-Cancio-Bello/staging-wlan-ng-Remove-unnecessary-parentheses/20171018-202349
config: i386-randconfig-b0-10191645 (attached as .config)
compiler: gcc-5 (Debian 5.4.1-2) 5.4.1 20160904
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 

All warnings (new ones prefixed by >>):

   In file included from include/uapi/linux/stddef.h:1:0,
                    from include/linux/stddef.h:4,
                    from include/uapi/linux/posix_types.h:4,
                    from include/uapi/linux/types.h:13,
                    from include/linux/types.h:5,
                    from include/linux/list.h:4,
                    from include/linux/module.h:9,
                    from drivers/staging/wlan-ng/hfa384x_usb.c:113,
                    from drivers/staging/wlan-ng/prism2usb.c:1:
   drivers/staging/wlan-ng/hfa384x_usb.c: In function 'hfa384x_drvr_enable':
   drivers/staging/wlan-ng/hfa384x_usb.c:1784:16: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
     if (!hw->isap && macport != 0 ||
                   ^
   include/linux/compiler.h:156:30: note: in definition of macro '__trace_if'
     if (__builtin_constant_p(!!(cond)) ? !!(cond) :   \
                                 ^
>> drivers/staging/wlan-ng/hfa384x_usb.c:1784:2: note: in expansion of macro 'if'
     if (!hw->isap && macport != 0 ||
     ^
   drivers/staging/wlan-ng/hfa384x_usb.c:1784:16: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
     if (!hw->isap && macport != 0 ||
                   ^
   include/linux/compiler.h:156:42: note: in definition of macro '__trace_if'
     if (__builtin_constant_p(!!(cond)) ? !!(cond) :   \
                                             ^
>> drivers/staging/wlan-ng/hfa384x_usb.c:1784:2: note: in expansion of macro 'if'
     if (!hw->isap && macport != 0 ||
     ^
   drivers/staging/wlan-ng/hfa384x_usb.c:1784:16: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
     if (!hw->isap && macport != 0 ||
                   ^
   include/linux/compiler.h:167:16: note: in definition of macro '__trace_if'
      ______r = !!(cond);     \
                   ^
>> drivers/staging/wlan-ng/hfa384x_usb.c:1784:2: note: in expansion of macro 'if'
     if (!hw->isap && macport != 0 ||
     ^
--
   In file included from include/uapi/linux/stddef.h:1:0,
                    from include/linux/stddef.h:4,
                    from include/uapi/linux/posix_types.h:4,
                    from include/uapi/linux/types.h:13,
                    from include/linux/types.h:5,
                    from include/linux/list.h:4,
                    from include/linux/module.h:9,
                    from drivers/staging/wlan-ng/p80211netdev.c:52:
   drivers/staging/wlan-ng/cfg80211.c: In function 'prism2_connect':
   drivers/staging/wlan-ng/cfg80211.c:479:51: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
         sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC && !is_wep)
                                                      ^
   include/linux/compiler.h:156:30: note: in definition of macro '__trace_if'
     if (__builtin_constant_p(!!(cond)) ? !!(cond) :   \
                                 ^
>> drivers/staging/wlan-ng/cfg80211.c:478:2: note: in expansion of macro 'if'
     if (sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM ||
     ^
   drivers/staging/wlan-ng/cfg80211.c:479:51: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
         sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC && !is_wep)
                                                      ^
   include/linux/compiler.h:156:42: note: in definition of macro '__trace_if'
     if (__builtin_constant_p(!!(cond)) ? !!(cond) :   \
                                             ^
>> drivers/staging/wlan-ng/cfg80211.c:478:2: note: in expansion of macro 'if'
     if (sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM ||
     ^
   drivers/staging/wlan-ng/cfg80211.c:479:51: warning: suggest parentheses around '&&' within '||' [-Wparentheses]
         sme->auth_type == NL80211_AUTHTYPE_AUTOMATIC && !is_wep)
                                                      ^
   include/linux/compiler.h:167:16: note: in definition of macro '__trace_if'
      ______r = !!(cond);     \
                   ^
>> drivers/staging/wlan-ng/cfg80211.c:478:2: note: in expansion of macro 'if'
     if (sme->auth_type == NL80211_AUTHTYPE_OPEN_SYSTEM ||
     ^

vim +/if +1784 drivers/staging/wlan-ng/hfa384x_usb.c

  1756	
  1757	/*----------------------------------------------------------------
  1758	 * hfa384x_drvr_enable
  1759	 *
  1760	 * Issues the enable command to enable communications on one of
  1761	 * the MACs 'ports'.  Only macport 0 is valid  for stations.
  1762	 * APs may also enable macports 1-6.  Only ports that are currently
  1763	 * disabled may be enabled.
  1764	 *
  1765	 * Arguments:
  1766	 *	hw		device structure
  1767	 *	macport		MAC port number
  1768	 *
  1769	 * Returns:
  1770	 *	0		success
  1771	 *	>0		f/w reported failure - f/w status code
  1772	 *	<0		driver reported error (timeout|bad arg)
  1773	 *
  1774	 * Side effects:
  1775	 *
  1776	 * Call context:
  1777	 *	process
  1778	 *----------------------------------------------------------------
  1779	 */
  1780	int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport)
  1781	{
  1782		int result = 0;
  1783	
> 1784		if (!hw->isap && macport != 0 ||
  1785		    hw->isap && !(macport <= HFA384x_PORTID_MAX) ||
  1786		    hw->port_enabled[macport]) {
  1787			result = -EINVAL;
  1788		} else {
  1789			result = hfa384x_cmd_enable(hw, macport);
  1790			if (result == 0)
  1791				hw->port_enabled[macport] = 1;
  1792		}
  1793		return result;
  1794	}
  1795	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICBd86FkAAy5jb25maWcAlDzbcuO2ku/5CtVkH855SMYee5zZ2vIDCIISIpLgAKAs+YXl
eDQTV2xr1peT5O+3GyBFAGw6tadSp0bdjXvfu+kff/hxwV5fDg83L3e3N/f3fy++7R/3Tzcv
+y+Lr3f3+/9Z5GpRK7sQubQ/A3F59/j61/u7s08Xi/OfT89/Pvnp6fZ0sd4/Pe7vF/zw+PXu
2ysMvzs8/vAjkHNVF3LZXZxn0i7unhePh5fF8/7lhx6+/XTRnX24/Dv4Pf6QtbG65VaqussF
V7nQI1K1tmltVyhdMXv5bn//9ezDT7itdwMF03wF4wr/8/LdzdPt7+//+nTx/tbt8tkdovuy
/+p/H8eViq9z0XSmbRql7biksYyvrWZcTHFV1Y4/3MpVxZpO13kHJzddJevLT2/h2fby9IIm
4KpqmP3HeSKyaLpaiLwzyy6vWFeKemlX416XohZa8k4ahvgpImuXU+DqSsjlyqZHZrtuxTai
a3hX5HzE6isjqm7LV0uW5x0rl0pLu6qm83JWykwzK+DhSrZL5l8x0/Gm7TTgthSO8ZXoSlnD
A8lrMVK4TRlh26ZrhHZzMC2Cw7obGlCiyuBXIbWxHV+19XqGrmFLQZP5HclM6Jo59m2UMTIr
RUJiWtMIeLoZ9BWrbbdqYZWmggdcwZ4pCnd5rHSUtswmazhWNZ1qrKzgWnIQLLgjWS/nKHMB
j+6Ox0qQhkg8QVy7kl3vuqWZG942WmUiQBdy2wmmyx387ioRvHuztAzODVy5EaW5/DDAj2IL
r2lAvN/f3/32/uHw5fV+//z+v9qaVQK5QDAj3v+cyK/Un7srpYPnyFpZ5nB40YmtX89EwmtX
wAx4LYWC/+ssMzjY6a+l04b3qLNevwNkmFGrtag7OI6pmlBjSduJegMXgjuvpL08O56Ja3hl
J6USXvrdu1E79rDOCkMpSXgCVm6ENsBJOI4Ad6y1KuH3NXCfKLvltWxoTAaYDzSqvA5VQYjZ
Xs+NmFm/vD4HxPGswa7Co6Z4tzfiLuL9paO212/NCVt8G31OLAicyNoSxFAZi2x3+e5fj4fH
/b+D5zNXjD6L2ZmNbDiJA5EHqag+t6IVJIFnF5AWpXcds2B7VsT2ihWr81BxtEaACg1EswXD
nbyME1eHgB0CE5UJOQ0FZWP5KgVaLcQgLCB5i+fX357/fn7ZP4zCcjQxIJhONRDWB1Bmpa5o
DF+FLIyQXFUMLCEBA7ULyhAOuCOxTrXFGHAhOChFrwQirWgapo1AopDXwp256QpDPAxHN8Ko
Fub2F5erVN+GJDmzgcCFmA2YxBwtYsnQ0Ox4SdyfU26bybsdzSrOByq2tuZNJOo1lnNY6G0y
8EI6lv/aknSVQhOAWx74wt497J+eKdZYXaM1lSqXPLziWiFGAmMTN+uQIfUKXBGwBsbdgo4e
w/ugTfve3jz/sXiBfSxuHr8snl9uXp4XN7e3h9fHl7vHb+OGrORr7x9wrtraen44LoVv7u56
RJPCm5kcWZ0LEGEgtSQR2hnwKe10x5q3CzO9LVhu1wEu3BH8BKsGl0hZDuOJw+EmGe82gbOQ
W8TZYYtliTaqUvUskXcxxZJnaLCJrTgbDM5p/SHwJ+S6d84nEHd7I7hUOEMBOkIW9vL0l6P/
oGVt151hhUhpziKV10Is4S0/uIi5Z2bKl8pQVIGgrdGtBm+qK8rWBFqPL7Vqm0CMnBfomCEM
T0Bv84hzsnLdj6WUhUP4vQVuE5O6IzG8AFEFxX8l89CX13aG3EMbmZsJUOexJe3BBaj1a6Hn
95qLjeSCGAnCk3J8sg2hC2Jc1hS0HRzWA01Lsbji6yONV6Lj0JXg60YBi6B6sErTlhbNOqh6
EFZqfscO6F65NcLpQd0W6Cw3WnDQdjkxWsdRDDIBXJzzE3XwQO43q2A2r/QDL0/niQcHgMRx
A0jsrwEgdNMcXiW/I6eM82N0gObQPREG1jWnFHBKHcdaaIRs6DvU4J7KGqL3gPm8TMr89CId
CMqMi8YFTS7UTsY03DRr2GDJLO4wuNqmGH94hRg4RfFKFTh0EhylQF4NhE4VqMJutKHJO/eI
OUcPt06QRN6et0/jomsgNruKgHTJFkZ4ZlTZgjcABwRJozzkgTSD4MgxoJWb4Bq9ykx/d3Ul
w4ApUMmiLEC/6UjWk2eg9D2uXrShN1LAvrfJT1BKwUqNCumNXNasLAI5cRcYApw/EgKADbqJ
G2RWUdDJpArPwvKNhL32oygdgKziooBwpYbL7nMr9Tp4PlgmY1rLkLNcNiEP1bFnZJiyS12y
hp+enA9eU59Ta/ZPXw9PDzePt/uF+M/+ERwXBi4MR9cFvKrRO4hnPB6vD+YRCefoNpWL6Uk2
3lR+/GDODK2Q+zyTXlPqsmRZJDtlm9EiU6o5BMvgIvVSDLHXPBlaKfQ3Og3GUFVzsmlF5WxD
B9GyLCR3ORk6KtOqkGXi1Q3Mh+rIWZNUkSk/LBCyAYJi5bk2kmafICHW+LWtGnD0MxErIHAS
wbNeix2oIRDHmTzBmHcZXWPcnku+gkYBcUJTxtErJYY7WlHA/UjkgbaORyTeEvIS+nTgVIK3
CxFwcicSNAa6ULCnNPxcp/khD9XCkgiwNfQAD8UkTEGZikijjXGvI10ptU6QmByF31YuW9US
YZKBl8GIpA8Uk+vA9CNoQiuL3WDDpwRG2D6gJ1xP8CR24IlgMOfskEt9J3vUYgkmoM59Krp/
mI416UF5SZ0O6NL41+FWVyDMgnlPKcFVcgscMKKN20NqyEE/Aty2uoboDO4gUoCpuiMeZsV0
jh658/Os4Lb3QahJiPUH5ab7e8nbKmVHd82RdEX3ChGMDw8Kn86IX84zk48yeNVgHju9cA/1
ObkZXK7amRSvbHjnUw1Dlo/YvBEcNW8HaiWKNObgbuQSfLWmbJeyjtRCAJ5TBEDhLhPl1z1I
4i/GSNpLjGmANWrx5iz4tm3JNG12JtQgIorW1CvMT8ClgeOT8oq/delIPLcUGv3/VH1NA/0Z
ZVJjlkj0iXoMBlMJUnn/gI3gaH0Cd0HlbQkaDHUpelk6ZMyj1nAYZ9+mNY1pJSkhEFvM0VEa
Kx71KX581eyGrLgtpxZl2BuVkcRCUtYmWgni7RrsBVz3FYh6sElV5ujn9YWQswmCufJfxDVN
iymg0VAVBe2njDvd4FHdY5OEjka5mIOVQzZYX23/X8SUszLR/xYMiQ0GBVI8j0qHe64hh0eo
MT+DxZQWb6qNgxNf4eBq89NvN8/7L4s/vMf5/enw9e7ep8UClaE2/fbeOqIjG5yfyAn3+qg3
pt7YrgQKTnAK0M1YhIkyGhWGCaF8usjCoBt7eZJIUipaPrcLWtlx//EsPbKtEUG+MlD0qpjm
rX4Go/mxADMTGg6UklJUPRL1t45crAQxpADSWY/4uPBxdFhlBYcE7ZJ36zjOHDQPZu/hetS6
DQxmFifHyixnRYgF54QbCWz1uRVhBnjIbmRmSQKjusSYCrFiqaUlsiTXoDPyGMyr3JV3nbWM
TBJirzI6VvATYhhEpurdieCOVONst+P65ubp5Q67GBb27+/7MMpi4OS59ATEjZggiTiLQaBc
jzSUpMjtiA/UnSkoMPiDSxYhxqUs0/LNpSrGqTkrkytDITBpnUuzTjykStawZ9NmxBCjwFxL
4wrD5C5bGAsqX4wTUwXOvKL2g+DBXx1joeXMocclS2D87T8QmfbtZ1ozXc1cvCj+aQdY97v4
9A9EASvP7gI5s/qMqYZYDAC2kTBMTcB9OteX49TC3P6+x6J5mCeQyuc0a6XCqloPzcHm474u
H1IMLz6PwKEsGk8yQPshl+8eD4fvx1QmbG+ySqjTRvR6lwnaCxwosuIzJVymPg2yfrVrdADl
24Czh9p+kvM/9iwwqzD00tVVQoG+mSvS5m4aV5ibJ9FXCUGfRz+qlafD7f75+fC0eAG14mpR
X/c3L69PTsUcT4maD20kzV0VVUJACSwEgxhM+IR2eLUOieXDgQIzCLRlQ9KqcfqVWGUJblkh
XT1kfBLQ4OCy5LTuxfnE1oJzh50zRL4wovRzlQ2ZoEACVo2zjDWIkTmKrspktLseNltAwFmP
bNCX2wsmyzZstukbXyToukgZOV4EzrE+iuhcjEyWTVY7iFI30kDcsozNJtw1Q2mO8qs9bHbX
6011nGfMK20q0s5Np32jhpmSJqUycL0zpaxPqI6ye/7pgnZ/Pr6BsIbOQyKuqmj/u7qIJxzA
ED5Y2VYyevwRKunJejzNkAP2nMauZw62/mUG/omGc90aRVemKhfliBkLUl3JGlsj+MxGevTZ
jIsrSjYz71KoXCy3p29gu3LmefgOjO/sfW8k42fdh3nkzN1h/WFmFGruGbHuo41YjJ2AYjmq
bxf05eKLkKQ8ncd5DYXJJgyS46nREDQQ/PjCo2mrGA3sHgP6zNDFeQpWmxiCLljVVi72LcAn
LHeXH0O8E3puy8pEPnHfgYCpElEKuiYLM4L288cK4vUe7F4z6tAdMKCICXIQGNbqKcLlSSph
GTlXW/EIvmqEPWbNB9ciTBrWrgHTXJ4etRWY2aqxkxTTAN+oEjQd07uZrL+jorRgP94pysCz
wDSiFa5um7BAg4kPnhpfvGGFiBlOdXnDYWTIbYqcTgutsAiI1de+FRGVMmat5gxnFRfrexD2
TJRiyfhufljKGwM44gBnm2ufkKm4mFJjNsmswH2YomT9KzDn6Fs6WVkJcMDLbjPkHr37FNTC
Hg6Pdy+Hp6h7J8wy94Jau9LlwzyFZk1UbJlScKy/UN5QSOocE3UFLPsQ37K/3m5TzRjCFNGD
rQLlk7HADf+0jq9IC3zzQm6jdhTwYkHqQb0RoPQlR0T0liMYk3BOXxZs8qZGJ1qraWUeHr5W
2JgFjgLlDXnMeRTa9cCLc7qnalOZpgRP6+yf0Jiee5PkA+XwjEgcH+5rwJzSftIS7qkojLCX
J3/98unE/S85J5HMA2gnaq53TdpFX4Bq8VhGdIw7z3we7fT84MZW8IbBc8sSebEcnFTsLGzF
mEN7c+ywqYrVLYuLk8cdeRzVpOoHx7N1zgb7cUEIOU7nq55pNl1USXoqAveTTqqRQ95xGea5
/Aci0nCm83DiOIPce7u+Oxynp6rejj8a67bgLNP5UZj8dWZYdY+SLR7gq+k8TnxQsEouNUtT
Ec1qB5onz3Vnp5/YjOkvMF5kI48PBRSm64OFqjYs4o3BhaEEeYj4XTXBt4Xm+vL85L/jb1nm
A6zAHw0xdP2dqrWMnYwEvmPlFdtRNpGkrnwvSJRmG+uzdtVMer1nZnNqwfmQgdMSfjuyjsIn
Xgownkg+kyqiMwHXjVKUvF1nbT7aimtTDZ9xjIzTf3cBr9bQ8d8wyonheIhBkNznHEORfy6p
AswhtMbMiStme13Z+0xjgI41dYfByvx6rqPW9zt1k37ZQNE2duLiOEe8y6TCDy+0bpuZRJu3
p+DUbzAdfnV5cR4wptVUQO+O6uty6apwdfQHAaKQlPbwFdxI81x3pycn1Dmvuw8fTxLSs5g0
mYWe5hKmSRMZK43tz+RUa7EVlPPKNTOrpOCOWkmiPwuPpdEqnsZGUQt0d21svo4VTlffiV0L
JzlulCFWcW0qsMoHv0jap7TJDf3Zx5CAzRIhCoss2M5R5vaNzj7HBt4WDypspSwW149O6+HP
/dMCnNabb/uH/eOLy/ox3sjF4TtWGILUbF8GDaxh/4HYmEYMMtgeZdYS1NKupl6nAStaChG+
TeV6WQfoKF4VKLm1cNlLcqJoiklWHqftyyGzKathM+Ro/1mltjOnUE18Bt/gcpzg6rP3vYOq
8BvlWB5WpvHX4KM7ljSTepgvl+P3jn1NGYc04feNDtI3mvmNuJDBBN+JBiWioQ1nSSYK/Vzp
+/g1wS0vjF9hbqQWm05tQO3KXITfFcYzCf7GpyuOgqXHy5gFp3E32hUPba2NClYI3MDaKiEs
WD29BcWpHkKHc6kOLeBho9az4Rp8WsNHZrNoGX0ZFSPDSMVhZFNRyjmZki2XGpjFuglCkj5g
TaC8NVaBvBjQIUX62V9K8VZd3a/htEzbgCeYpwd7CzcROH8ojnym5j7LRqFMGxf9jlVtGSjO
WRbs9V+f8UilJEufM/pUIbyTStiVyifrg0PRop7BpjFXWlR1SaUvRllljZi0Ag7wvhstXgIR
lLPb2KIP8iPtJbEhHthipuLbXxr8uzAh2xnSG3CZFLh8jDuCewENHHIsEIDVA/er73vzxoDu
WEGFrXobNUuB8jbzwZWbQEKMwyCOKVn0oTMqfnATr7q+LXb44GpRPO3/93X/ePv34vn2Jm0m
GYR70oyCI+WX+/1oEod9Re5yD+uWatOVEHHQH6qEVJWoo8+enGChX2FGOq7aphT0JfpMUHpB
bs/Z6/NgyRf/AqFa7F9uf/53kJTiEYOh2C0VuqS0n+vQVeV/vkGSS02ndD2a1UFyGkG4Ygzx
M8SwYeGE0n08mQzndfbhpBS+CT5CCbR5UVCJQJaIDYDADmnS4nvyITOYjGKmoUJRN2FTiXhV
EFo+WbaxdMXH3YChaxfuHuZcG45qycdLvS8Yf5DtdK1to9b4lcvXzszGbHLb6JmVwn1APn0f
GRYMENDoCc81zEjqEyU3edpxPqhwZOeU3/P98923x6ubp/0C0fwA/zCv378fnuC2epcX4L8f
nl8Wt4fHl6fD/T04wF+e7v7j+xCOJOLxy/fD3eNLqBpwO6DJXI5qsjQOev7z7uX2d3rm8Lav
4D9p+cqK8IND35wYA/re6CgoNYy4KsMxyIhUuIOstDeVJN+osqFYHKKWqEmvFvbjxxO65LYU
ivTTqryrs/DhMZMVv3vFJZ07QFK4CeKKf7q9efqy+O3p7su3sPFph7Wd0b1xPzsVVG08REuu
VinQygmkT28H8V8jc6nCy+1BnTXylw+nxAUMBJjDcy+gWnt5dpKie4nU285uO5eZmCzreEDU
y6Ql5YidkftxhbbCuBW8nYcUx1cVuL7EsSrcSsdzsZk8gr75fvcF23c8r08YPLiZj79siTUb
020JONJffKLpl6L+MMXorcOcxaUH/CIuG6y9+Gt/+/py89v93v3FoIWr0Lw8L94vxMPr/U0S
4mKDZ2WxqXl8BPiRfmCGv11a4ZhhxDbolQDnVpM9fH5aw7VsJn/uANkibBX0tAim86UeX0lD
ZjwUOqBhvqNPNJylf0uj7ymSKkqRgaBHP8DILePmTwSKAeauuN6//Hl4+gO8qGnOoGF8LaJ2
EvwNMsECI4FteOEV4G9HQl6AJb+C2xbh95b4y/0lnyj5hUB0SGeGYxchSGAp+S6Zyae3xWQy
VwQwVvK5HeHHE5g8ewhvby128XUCgFrCVNQLS/9EozFo/Bej+HcRKPJmzH24sqxOBhcyw15c
MU1eTpZo8Psil4WYI/OFX0/MLNmAPxBthM5UmEs7YnjJDHgDEaapm/R3l694kxwGwRia0AnO
nkAzTWXJHbc3MnksCTErfutXtdsU0dm2rsMy1JF+pDQ7LKKotYxb3jzlxlIhFuLanJ69UG06
DYDGvVB8iAzTscDqOYAw8d31MCwWpn3nIUnKzw7oOL3fbowhgV6ksBTmCxOYgpqlSC4hQWci
EYa6Vy5UFYQ36J4uw9boFJWFGYEjlLc0/EoYe6VUUM04olbwr9CsjggD/3xrd6sdRLHEYhux
ZP/H2LU1N47j6r/i2qeZqt0dW44T+2EfaEqy2dYtomwreVFlOp4zqenudHXSZ+fnH4IUJZAC
nfPQMzEAUhTFCwACHyVZZXG6Vh+4hl1n9sDKKqLlp6Qoycc8JIya0ANfZJkoSiGJB8XcdMek
Y2PH8TN+hi2trdrddivo0DzL1x/sqoTu5et1xNQgstwaemkSWWxf4D//+HH59voP/L55vJLC
RWupTlRohRrBgA8G5y45qw/u/K+aql8e0wdvIdCFqv2DVjXVWp77R2dY2KTj0ctzzPW3MtaU
+nvGuYjfJuiJboEOhKKpLw+zl1NjDarvM8n3T5//csJlbFEfFAkARJrKtXNUt8RbZc1sP/GC
hJrREvbL6vW420MGgvoszpYbkpN7Rls/wRIQ7BVqyUct+H89uY7pbbgRtEnXOCeB6qcaSQGY
M2BmjGw/sLZ1dLtGYYEjTX2dIdNzqC2LGmrFkw3a0ndqTx5/5bWzOW1rEe+oxpjkV1jyJXMn
ChC+egSlu+xISc1IgpyDfKQZqos2y/mSZqq9TWQ4RhAz7zl61knV063n0eKeonW7E+4axMgd
RpxwTzM0lF7rI3ovyzCGUcYjPMla50cfl+oOIJZR5yNttEK1smqLwtv2JTRx3OuTJIFXWaGx
NNK6Iuv/0IApalVTpnlGSgLMjvvuauYYXkDBshhEehm6/3n5eVFrz299QoqzDPXSHd/eu98S
iPtm6w4zTUxxKK2lmvnnEasaZ8lYqtafiafVbjqXJStrN7TO93zKj2e5TXKfOYFxlr6lEY8s
X6m5lJZo2bGc7l5Se7WbJJ/2WVzX1Kvl99BDVx7D9+UhmT7lHmcDDbJu0Jglp/cDZ/J8t+cm
7P3+eh9VgoSI67mkaa2Lwfk88UmIU2PjnPzy9Pb28sfLZ29vhnI8mxgeimTcQYG2Ab/hoogT
z+QBhl5NbvzWASc9B/sC2MclHSI/VCxPIavMsm+pN1HmyvUHB3HNhr7A4Ey4Wn/1BnoOEGyQ
3ev1QKIZV57C3KMCbZRB1BH4G0KjBAR2XsGdLlUH8GlsqVzU4fkJAlIpiO65leUUjNKghvYC
1LY7LHR1Iq/8LtH0wxYKXG0rl0fqxMSyYcebPnDy0fqn5dgcs3SRkm9qjEtwv4TcAWmi64SV
7CvB0Ms3xbDTZ7rYCJxAHnPkII8LgC+RJaDmjtSt2jeYTucdHzTS7J8nqkBnDMlRjRo5MQs4
F0cRMmQH8XMXiBNXbmI3Qo8OeKvLKilO5lAEDyREhi2HKHgyu79jG59yffZ+yrkY+FRRnaaK
a6AZPb4kfoLJmLtWufrkyiA+eL5ONeu8FR8o3U46rkpNg6X2ig3XFSTCxV7W3tanOy9OTv4U
yJZqNZMQa+15+fEzuHSOnnosQ22L0jszkpg48rQ62sIZ10Pnoqlt7539VwOlNXXC8j6ZfrLn
9U7n2fvl7d07v9eNOzS7hIp30Fp4XSqDvCyEEyizZ3nNYq2P9Un2n/+6vM/qp+eXV0CdeH/9
/PoFubaZ0XRHhVj9VhMrZ4AUcQos6XWJlJ/a+D/101j772g1+9a/1fPlf18+X9DRyjgyDkLS
dt9txciApW11n0D8jzsfH9SQ7iA4I41bcqIPAvu4xdNc09VHmdASHAX3wJC2y90jJvWzq9mZ
GjuKs+Woh4CwO1tvhPo1i03PxP6hE0ieiAedWh5IJASuzDwu4sGM8SrjLOOASAPwkmRcMghl
iQNkqiifWPHYCfXXEldYgUoafDrve80njeCSFI8Lj8zv7uYECY6QKTJduUgF/D+NXXI+bWKV
sIMOYvBl5ScGcbYkcdoYy6Cbk+Ry+qb2yYH2cPeLHE4MhvZUPmt7ojtMytRfiYcBKSsxewGw
wz+ePrt58lByL5aLBTXBdAfyKlotWjy8j3Lr1ua9t+J7nSFjIEbenCEk+3ee0HUfGarT9DWg
nOj2BBq/ZVQxk+Jtkt/Js1D3tBOgGpOYdvcqJhnypemx9Oq5gj24bZBSYsKivvy8vL++vv85
XWrHMiYh7Sui1I37e8/FtvE6AZFhMaObM0jUTea9h2IdWR3Qz0xJnkfzJblsG35KNum059R5
k2Lm9cl9L9bsl0jlZanatusKR0v2lD4IqstKJxDWcj3fbd0eXKwjJXjgAWTM0Pbf888CrtjA
T7UUQHRAVPXLIsRikgvhrUkSp0z3QgKp1jzdgVMJgXgYF9VCI1bkTlqjlYWZkGQlZNYolRTu
NXHG7SDGE4Bn7NE/u7I4UnMHVWoczhVdGRE9PRUyLj2WAa5dTM7yoW11zKaXCg3ss9PfDhlc
d06hTGxNF6LRaWlT08B351FhNpYF59ca9Q2uFzKoz/NxZMCVQ1+dn/1Cpe92GQHm6vQgsF5q
fk+Wm54siupIrTc9e1f53r1N5f+2UDme7bwx2OcBBXYzORXhTKR4WRcpJQGFjVqDie6OkFT7
zmBhjUOmp0HCedM8hCy4QQyQBjxrdny5lAypHNwR6C2N1W4Hydk/CrYU1xUQwzUUbmrbDjAP
kmzqCFNdARYaOagezFsYCbtrTJTP8Rael889eVb6MTBHA1u8T7IKW/YOuYNwCQSsrh7c5JVr
RFuaMl2ORQB3uGFFzDL66El9Pf3EVNTGPNa3HowNSs8ai879XoOwKMIAe2qm12wQRa8xVGkC
wf0uINldyrIMwBjRWsx0zsyJCG8y8d00z6OijtQqilrbA1GRgw5TB0JdjACs+n01aqznJWn0
aSEGKVBW1Nwyg88vHyRC4AkEWfb3l1THK7oVloIQX+8+G7XQO8Fe5ncn8KUXPU3iLKSBliN1
uSfmOV7jbI01Or2A4EV9O1gMF2CkLmyGGjVJwZMBTX+IWTdqGdaASzXZeePmxuQNHRBfpkTv
+JlSBtfW3Z9ChM6L0+6patQKRufnjQW104+aj6OE2lyT2gV+t9wdGednuaxdr+82t1TBRbSm
Tr8suyj7l7J0HGGlw6v0GM+VQsV2yaA4V1NHiBJ2s9Z6iERHr+1RE4uj2he35MGhFUkdnAbV
XBHTiSG2ANh3UplBeSOqZdTS0D+PNSNV8b6OmPHN7XzyCt3Rg5KydK4WnemlM55QBvBzXymq
TkY3sC1rn69RF8q+7OTBcb2lh/zQwx/wZbu+0mTVS9MWK2Lf2PHWRszTyhbOqsfMGF+GyOMa
vEeHhsenOEDuVwlA/R01EEfgPElGtzMcgr5hiU3wxTO9M3frZmWOVA0YerXPvD73ubLFnv5T
nnj2xvBpTjj/QwumbKsWbOlR/WtvjCh5XgechtU7fK6OiJ0/jjAvpGEikZRb70T+8vYZrcrj
5pUUatOScBXiMjvNI6qnWLyKVkrjrko32XQkwyZEh6IgGe1qoXbjY54/BNJVxDZXu68zh6u9
UidC9zHsIF+FUwunMs9y78Nq0l3bLlBMA5ebZSRv5shKVDucso8B2RBy+GHvRvq2XK2Wqy5P
d1VDU0fcSrWr3nkSGv+uvxdD1ijAf6924cy9SaSK5UaZSoyOEpVZtJnrYJYxeEvTIipF3371
RomsVmjhtIztfmFcj5OBotuxmVPui33Ob5erCJeK5eJ2Td212B/xWOiSMcgEDtD3R8f/AY6W
/gwplWxzs6ZeKWNNo75Nl/BqOcljkjVzxxBKBArdjMkjP7vaUNR4VbWxuosWK6chJmEhUVpb
PnsbcpbsINJ0tcRFN+PLjsQVft+eHMTO6vnKCr5d360m1W2WvEUXEg3Utr2ZkkXcdOvNvkok
srD59m4xn9zLY6hB83Hkqhkrlc4OrpBB8Wgufz+9zcS3t/cfP7/qi2be/nz6cXmevf94+vYG
fTX78vLtMntW69TLd/gTr1INZLjRMx6tX/4qZE5mvrxffjzN0mrHZn+8/Pj6X8gte37977cv
r0/PM3PtKzoVgug3BoZY5YQtQ4JmjhN9B1KHN4WR2rQojBydZ9r+EN/eL19mueBaXTa2p7VI
JRcpQT6VFUEdK9pDUlyIySHvinhMUP71+wAnK9+f3i+zfASZ+IWXMv/VN6ShfUN19s3hatOu
hhsO8ADn+wBsRptpiI4gk6VHa4eVVcBDpsQyQXnEzOUL2M1nfhjN+Mvl6e2ixC+z+PWzHqM6
Hue3l+cL/Pv3+9/vkH40+/Py5ftvL9/+eJ29fpuBcqt9zxgDOU66VqlAnetSBLI5eZIuUak9
hPqtWdK5uRMou9j/3REyQ50TXUjx+TVtSPFV0SRQVCOLELsPvBpcLKP2Xnw9m4aJqEtlQg3r
AHTY5z9fvqvSdpH87fef//PHy99+F1qATUKLvnY1mFXD8/j2Zk69huGo5X+v0wiuao6qHco8
ut5d2kBO02EccYFf8m26FeDK3fRtQ4HdCS65KGs699yWL9N0W7I6ng6dCTbpUEQtyrfRgurT
+jEA5+O96gQvHHgs4beRTgqc1MsysVi1yysVszy+u8EZhQOjEaKtgt+QPEHpBZpapFnSkmWV
6hXRmEZYZHmtL4z6Nm2xpt9S3bCvmuUtlTBgBT5pZMSCarHki+jqp6mEaIkFpFkv7iJyJjfr
aLG8PvJBhLbFB3tIru9uFqtr7Yp5NFfjonOgOSfcIjlPufJ0PshpD0shcsBmIxiq7xdLsv8y
vpknV3u/qXOlK09rPQm2jnjbkiOp4etbPp9TxxrupLFrg7ZU+xPLybKg770w8W/jQQUTsJY3
ZFoqFECpalDcMzw1rQ9kClQAyPi9hYLUZWB4C7due99oAzD/i9LV/vrn7P3p++WfMx7/S6mT
v2Klbeh+ar/h+9owG+cEuqeWMqDuDXUG7nGytZIaqmW6IWr6ZQcbL9RN6m/wzuP0bk3Pyt3O
vdcbqBKO0rXX2Om+xuq6b95nl4ALA5950rCUX/3+ysiD/9qyTp2A7BOgK/1IsunDgKUVNvoa
ACNTV4GmZuVZH8fReroenlTEm+aUMtbgfcJFPxp4xywmqLG+X1TbAMl/Ft7DtEDwSFIpSPRR
JTVYe2+Ki/bbcGU9GVhPhwZQTMLLwcu7yvdSIR6cnqAIEPD5wAHKxDFkvvVAHQ95jtJDBzKq
VpIks8VyczP7JX35cTmrf7+iZQefESVw+E60zrK6opQInStnXPV7CeB8Whd3zrkg6ynJj3mp
XmvbBIL4+kOQcdoAuL4flR66U5nVkBlDOhBzqkWaDE6mQJGG4xMpkzzFhEtKiinBP6O15OYI
yH/HGgfYWp4mA1bE4vZ8hbu+xry5xozO/quP7Fo/NtALjlj4+XX//PAjIjqgH+RgPJnIkEAj
Hp08G0shQMYUsRAA0UYihTXasXF3F60iv5SlX10bkFjNT/79W5QYHDfLoz9IWK6sWcnisg7R
qTG0L2vxiJ1iiEjJCzZ5SRb00+jPADcezOfOKSam67cBgy4LTrNBVA25OmnqB3S44PBNe+fu
gwLu/xzufCrlGFEnUuQfIsJpdQBE01ATW7OkhjtUZr8XM6HpZnd269qTi7RmDZEeJpbg5e39
x8vvP98vzxZJhf1QNt/75TPcuEMEpK2c8FH1U7dieoyNBHKND6MlkGoKDDimHRhupTXbhmu1
WYyTc4Wenjd3tOUzCJzW6+R2fot0ZQPpvheVTrWkyehd3fD2sc7WtR8nzG6XlVuWUc5kK3vP
2fowrV/mkg/Znle5+jCdaIQjA1+F8spClHaB0VLy2M8vOSUFzPkld3F9T2XdJLSx1TxU+5I8
pkT1sZhVBooKHbxokobJTenNHVewS1xfb9IslmTgKy6UMV4L9RDnxiaZCV6SVyw5RZvEu3GO
qz0kcIZkfLINeWkUrjRnjxgu1GG5cYt5vF4sFvDJ6MN/0C8CCW8AjNXutgHNpGf296PyUI6e
bdb9UZkUgtFtrjlNh3FWegpOFmhsk9HZ58AIvILihL4DPURx2451WYfC3jiLIVjE0xUpRy2q
cVuXLPamy/aGvjVpW7R0N/DQ0GrEriwCjhBVWcD/UbShFLux0dwgpaJCoW7py3B2Esec/OJ8
n2TSDS/pSV1Df96BTb/bwKb7cWSfqEAc3DJlkjjtCk5i3qrpEEhbi2ltHj0ndhe3QmPTePAH
RKk++G98UBbRCORKc4sZfY8Bqk9ZNb5PMYk+bHvyCJsg+WGTlrmw25Ggz0VOLQmggKrauxDv
FY3wjgsc2RkfaCGWvcll/Kp0bYmbE6J/Jv7vbn/GThOxQ9Gq6odi5+5OoIgnOi9bqKWVOn2A
FRdVahbgSbWaHHM68VbczD/oYLGOVq4b8FP+QZGc1ackc3oyP/naA2IVcIfVNhDZcNjR67U8
PIRUItsM1QZWlE7b86y96ZLAFW3ACxrfiru6ypXnq+yUsj9xa5Xa6I6+g1yvb+iFHVgregk0
LPVE2h+ldFJVa+uDkNLtKfsZjJY5Hq0/3dKnCIrZRjeK+8EMzB9cIFX4vZgHPnOasKz4QCEr
mNKRXMTpnkTv23K9XJPhIbhOSHosyjwhV4r1cjN3F+bo8HGXFicRuzarvko7TkjIOVSwPHjI
s/supIkBvHdI++pRDKeQnHulQqpPTVb4kECocio+UMXvs3Ln3ql2n7FlGwhrvM+Cqsl9FhgJ
6mFtUnTBckHcANvCI8sg9tFpo84AVS9PVlnnH25yAFDcJAdXKaXRidaL5YaHWU1JL4/1enG7
+agRRQJubWqk1rHzUerb+c0HI7+G1PCarEyyXGkM7tXRenv5cATLJLmnqxSZe4mB5JtovqTO
lpxS7pWxQm4C17Uo1mLzwRvrC7dT9c/FsUzpUaHoEOvPPzJOwXZ21s5K8EWolUp2swicO2rm
zUcLlmz0iu28QZNrp/SHH+dYuKtBVT3kSSBAHAZAQu/VHPLmi8CiK47XG9Ek+2PjLHOG8kEp
twRccaH2YRbA5G8yMnEZ1Xdy12f1s6v3oqCrAy5kyXFBeuJQtWfxWLhIT4bSnVehITEILD/a
T+VDUVbywU26OfOuzXbeymZ3nTh2ui1O0sA6LQ8pZWsorcBJtFCmag1JTY5TbqR2GRzd6Gio
kH9EbrVO7biQOv8qak00SOOj8qBpotky+sbl/YPJCrMvdFYUXD5LYgiagHtjQBhXYeKHhZgB
PZRvq6+o3KMETOvb8KjNer5sXdqW53fg3wPiV0Rc3xFEs4F7b2OdBG69XCgjnPU1jJOzrBtR
MP8l7RBQVvikorhSitLNuvO6TJNv7wI1paJNYr+I4FV2lIESJniwPbMH960zOJ9uFvPFgrvt
ytrGlewNDlfKEpVq6TfH6NqB5oz+W6JUCVploGChk2BZ5pe7p8qM08RoEIE6YTOm2qIds3QR
2SgDtHVhXJOaqfEj+OQToLWsSSRctUzW2YpMFG23U7MhqnfmzNLtS2V2bDarHCEiVJlrO1QV
rfxIz5+hpx3EdP7r7eX5oqEFbPgFSF0uz5dnHZAIHIunwp6fvr9ffkyjSyCG2oCnmOPRr5jB
WcNdyoGdIQnDC8KuAMSWTG3uc+HXi9XcrcgQI78mtQHdrVvKngGu+lfgg2/beEiXWty1fmUj
a9Mt7taUo82K8ZgbNJVJ3YrTJRjbDjMKTjCMBwXxJ40CVr4VtJYwfJF8c0vGEFkBWW/u3Jsh
EGcd2DYHETVB7lbBnrYimxUOwLOcXXYbzRn15AIWJDIO30rAQredVplzebdezqeMuoiFiT4J
9aQ8biVph1ihR3asj5Is3q6j5WIedPhbuQPLcnFt/NyrFex8dnFqgLeX1JGQLaVW9tUCp5no
SRfzCaQm0EW1N1MP0aRI6pp1RTLpnFNG+xmGN99vIuykO3tmxoC6cI6peQ3i4ylTbkw8iocz
ttQP6sR+b9JEddIFeeVIs18d3PhSRbo9ZF41ihIANumZ1LOBDo8PIXKdhRrrC6on3dfME685
eSDgCRez+smHgtqf/qGUVhQ+aKmGh1BGpWPQlJDXQOmxSZ3jrCbzG+AzJDqR6Kk6ew9yv8vC
u6Me4Hf8qhqlF/q0Ao47swkZQp99WqmU5ZKXPlKNbhmJDov7YPS/WoVJbJO6Yah+S3FRFAYq
5FFPqV4IxkBXLUezID/DNcfthKATXh19qqfTY9p5oSQWzHOzYH7N/EhPWsyoWh/LBfIqsQyZ
OoUF8PU8mP74EDPHgoEV6zFeROReiEtqwyIpCnRset8UqbLxxm/VEwAdqc5MjxPbgtlzzp41
rBWv80vO2hnEzH25vL3Ntj9en55/h8tVJ5ntBo5ERDfzOVISMNUdXA7HRTEZe5i0zxFk8kSN
O+UtnFm7YYGfRCOPHYk10AMgOvEKQsbukYn63YkbaqnRLO7krcCvAQjAF9P/iRwlZuTlIo6z
BFKkJp8B+LM/n348m7StKWwcBM6ecu+J8f8xdi3djdvI+q94eTe54ZvUIgsKpCRGfDUJSZQ3
Ok7HM/EZu92n25nb/e8vCgBJACxQWThp1Vd4g0ABqAdrGaNu3dvWNU0sEPyMP4MarNTFL7YN
NqJ51+UVzNmREn9qmdLuCyZZ5/jz6OHKuNADmhgv9ect67UTjyCWboOcLd4AwzrXSH3YEaPl
Swbu89pWR2DQPgFBZf216wr6aDahb/M826kefwS9YP+u82bR5EsUbTQ1P0FmU/t3VFyUubVq
FFpJ61NVPems3ZGzn1alOsA6zcMWUFphsy4t677+/WHV/eeeiLRpCgTutwi9KABwt4OY0NyH
1puOgG9O4cBBI/fcGddR+BAxSqpS2hXD0Ygtzmt++v787RVWPsyxnUwNur6Gw0UdARdBJ+wQ
YrD17BCd17fhN9fxgnWe629xlJjl/d5ccW+oAs7Pmv+kkbidA2qLcbK5qRQJjvl1NLya3xMl
jUnJ+HW5wtBaDZB0piT5J0zYo8jMQo9bvJ6f2AEuvlOLT9RzLY+cE08mveR2URKuc5bHo8W5
xcQCLrfuc/AJbrHcmxgpSaPAje4yJYF7p5vFt3GnbVXie7iyjcbj3+FhokHsh5s7TAS3fJ0Z
2s71LM/iI0+dX6hlV5p4wHszvOXfKU4+h90ZuKbMdkV/EN4O7uVIm0t6SfErupnrVN+dUbTy
brQ5kYPhJhzhvJSB49+Z7QO9WyJcjt5yPPbbtI4pOw/8ZMujdkU2EW9paTFznlm2V+zFd8bh
RZr9X/XvO4P9tU5bqvkwQcBbX2mRTWcWcm31KAhKucUu3zaNdlqZUZAUj4tIrAu2vARhnxzQ
6uVwENZf25UC+KhbnNfPbLuGwGkIdf4/c50r27BNXWPkveJbSjCkbVvmvJLWkrekCjex4jBC
kMk1bVOzKtBRpvqyjpjuEXAmdKTP/TAMaWpWRHpINFs+zZq1Amcu42w/beQQmREzWxQMPJKh
JjMJCj/csUMIQaPgqTxFC0fpNzSDPSXYhZ7CcUhrdkrbKzcdM3bcsh8oIm/QkVLFfGEnP9JU
lvOIaDfMGCECrXBZ4ot2VRGMZmzzywsQ8aHikLgE0dnZLLGx79SQSiOFN09Rhud0L5PuO0x+
1UerpHgmxdcUjyQNuxESUBiOEt5hPPAUvzYPpjFmrkX0QVzOGRz8561InMAziey/ui86QSY0
8UjsGr51AGHiuW1zkQwE1nHsqYvDZbGFbcQor0sviuUkJ0mFemPPkWX0XmUEqTE4WKfc8GrI
O4VJPDaKFaJbr1g6noxZsU+rXMaTnAodabe6Z8IuUurEUAbLnEBn13WOLoLsqsRxJ1Mjdgx+
+gwvZ4v7HUq1F8cz+gJRF8MmubX0qiydwn+PlSh9snlhpPcwWwRqYWycsU5EB6JuHhubUt9t
3+P3zPxq5tbbLggn+Qw3p2LnJsOXHqMcK10DRlg6P397eXpd3tXItsGF3JWop3gJJJ7uiGoi
spKYjEFSmmfcgYXwKoTwCR+IZmdyaAf34agNvMLESH2jurHVKlGlllLVBwsVWGh3K1iVcxfs
dypUdzfwJd7/FmBox6ZPUeUTC1pQPtC8ziyHJa2Heouek9oHuGWnVinqJQl20FeZmExrGcKq
yKxd1gzpYrLV719+AZRR+Kzjz+OIjbPMiB2vfKvumcpiUQMSLNDhZUFRXwGCQ/czpxCVOWbm
+rvlu5VwT0g9WDQHRg43KvrYpsIkmNiM2eZdZtMMk1xyh/idpnurM3ud9R5bsRuiwXKXIFlA
nfduaZ1FGVHAXYvriUuYzXE29+6VAd/mo+tjjk0kB9xCGUK/ghDalbCKwi6Dr8Rs8eeeC/CV
mEOo9WbbGn5ZpRdMOakwWbmtChBVMy2WJadm8JeTRrdT4lCb1gURB3VbnkInTTwz7uDO/02D
Vc8kgtCrHs456QIh17Jmb5BbiNzW7BSn4IcLk2LqrKkQEo+Xy4QIsTkt0IUpywylFb4ozhz7
vMmwTp05QE3yDSNLU+FxUz4b/gc7fxPhQj6cCgvjqXicYk191Z16VRc8UlFPfniOI45nyvNq
EvvRD4Na98SgMIFxYakLL1acnp97LrGMTW7V9yP4xU2TtQ4fiVj8w5mLHaXIIQenFzCe+GdD
2F9rEW7ykvvSxCUX05HjUJTldasrMonbX3YKWl7Oqw62wQMaPyc3TCbZF6ocA1Qu+Bb1TjsW
AwBx19HIfBw8sFTaxTQjQsh6eWSp/n79ePn6+vyDyadQRfLXy1e0npDIGM6RWlIS+E6kVxeA
lqSbMHBtwA+zJQCxpluaAmhVDqRVPT4BIL3Dg19zHTAuHICUlvtmq2oWjERWpVFih36YjnLg
FnHuD+mH7YHlzOh/gVvEz+9fPr69v76CgL+41OeZF67w6KW1lZMjzHnZhA7+IlGVxSF+8Sxh
MD625FkkjjEUhfBXpFEqo2/AAVigMxF2aL0Qc/BqbmmDHd74UIAPrU1oJmLkCHUKIMFNNJhJ
zgXuXkdibdcsvj3uWxAdnJ5Us99M+EJ/fv94fnv4A/zMC/6H/3ljo/z68+H57Y/nP0Ex8lfJ
9QsTEMEVn+aZivcPuNgz3xsUPMv7Yl9zv526NGeAU5ArowcUFltAOTMnPXKVgW7TK49Jbckn
33sONZPnVX62jbVcJTT+ZnHZr84xkqoRvbSE7ZCaZl/GDKoofiXOQKFUOw5w/oOdwr8wUZ5B
v4ov+EkqtaKTIysauLo8eUSf/3MoAL2m0n9+Cbc6lgp1zbahu9Pj460RUouWA03hfv+M70Oc
oaivpjIPb1rz8ZdYwGW7lAmst0k+IdzMmClyX0/J1qxUT0+oaSxA3P/JzwVJegBezlvQSLFa
cM4ssB7fYdmiusK9LsRwzyCWd3XARJDLcXqAE/Hq6TtMBzKv6YuHWu5QjZ9MlN4D2iCcrU22
fwomrScM4omChFtedfLsy0Brxfi1KldfQL/ooeokjcfe0IjmNwm0sorZgbm0nPwYQyNmnKX3
2Jfpqf7tZ9rN0IwBZFSzt2TGTpgJ2wscz0xH2c5cFrsdnOEsaQduc6g1V374RoMfr/Wnqr3t
Pxn+4qfhH2NYyHlgjDr703QfeB9OHtXynup1oGUeeYOjE41PZiJx4dRsu0D6K5ul4GC+pl2D
LdJ6+JVDr1wasR+a4CiuqftCkVomJ8uc/PoCHrTndkMGIEMqqpit9sbAfq74u6ppCxyLzgaa
LAu7U4FM2aiD7/qjXWpXuMoMf5VQWMZV+w3NwNyup1r+G2I4PX28f1uKgbRlbXj//J+lvMyg
mxsmifDCP8qV+ZenP16fH4SJ0QPovdQ5vTQdt0zhE6CnadWCHvHH+wO4i2arOtui/nwBb9Fs
3+Klff9fWznwiSiHMh07npVPhJUBVwnjhGhfvhgTYuYTZwUlHfvXTBjjCs2AcokL67QsCRsa
gZgOdEYyhMD0ewe7lh9Z+sENnQFLjEk0CyZ2KOy667nIMbcBI9PilD8V0TUDRQ1Up/zTum7q
Mj3mi45nnVOzUzBVz3gjtM+roi7wZGV+Kfrtqdsvk/Wnuit6oQKvjA+b1po9G38p0YPySB6I
IqG7ExEjqMeq4+nZirTrDdrCMTSncqUTZz5tPr+9f/v58Pb09SsTpPk3t5BSRA2rrKVmrYfW
czbKcwsQs0vaaiHpOBXux/GnCKWqqK9vnbNA9xwOldd6GDtbT1Tl9aPrxfZcK/Y9nrCNkKPn
IZlfFFu2rPwiuwseFVe6zHUCkFhvQZIvqgRYAaCLeSpWWVhyo9t3sZskg9Htoh2VwVrQJDan
iu4Rd6SZsW91hkvvRiRIFusxnNB4Dzz/+MqWT2TaCN02o7JiEjrY1PSGRe343QQaQ1XCuySM
zf5YLkWcTNuCeIlu+yE+hF32D1rimXVOuaPG1CjcdBkuPox044QeRgyNTHkQasrj1+q170hI
wwS7opCN66PQSSIjO07euA7SGRzAr9EnjiSwqA4KjqUmlTZxqsR3zbEBYmj2JCNuNsFvimf9
9eEQNytGzluaqAKwmFZsz2gOBqO2MUtKMX6RBtJlxPfm2M8gli6qZqwnfH7jSnmCgfh+gprU
iboUfdN3i/EautRlnb2Yu3D+tHXWRblhurggs45d7P7yfy/yOm0hXDNOcRTjCpHNoOUhkaz3
AtWNuo4kHo64F+1CYYZQeU/WsX99+q8eyoqlk1I6WBEh/Tgx9JVq6DmRoY5OaAMSte8NCExq
MjhhrJUKrLqDej0XbNXXODwfr1vihNpgzCl819Ia37el8G9EdTyog4kxThMUR6jpnMqROHiu
cWKpZJI7gSJCwbPQLT1rr26C2OW4XahAIfKxenxXqaYpVwv+AgBXPncph6QZYRIrXAYoBvdi
KbvByJ80uwsJ8LzQT16sd0sGCfOwo6Ims5cDUfrcmVNmGoKGI1AZvGWW/VaRFOEkCW4ggPhm
cm4/efGgrqcGYKogmvAhw8K8mVwZvZ3YWLBekFYYZjvGfXN+NwO5c63DgQHOWaJxayy7U84E
/PSEutwba8CWczd2Agdrq8TwPVRj8lAfqyOL3EcZa4b2aTdYfJ+NI1j0LVRklYfVI9k4Nj+R
gse+oY8cZZvEXrycQ0BXRb2Rbt50zbWp0z36RUw5UuJHobvMEjo0COMYz3aI42iDSUkjC5t6
gRtq0qEGoc6TVA4vjJeVAiD2w2XHMCBMdOdp03dXbf0AP5lMA8KlOrRK4+TgExh6y9vwx73F
7BkVvlZnaUdDx1/rto5uglDZM0e/i+rP27nITJK8ZhZHWaHK8/TBTkyY3pgMPLgt6Gl/6k6q
XqEBKbvahGWx7wYoPXADJC+gJxi9ch3PtQGhDYhswEZXvlQg1OuXwrHxAiRkY5rReDD1SmfI
R43bVY7Anjhw8YVG44lsujcKT3y3EnGINK0nMYStWgDHhOZVu+zho+vgwC6t3PBg7qxzbMu2
zPuKYDUAx0xo93BzxbVW0aHVPsARyPpoNTgnxM7EGp2BN59eu0wfEb4t3sR2gWHILC3CI4Qj
WBYDVwpOuEP6EO4avN0eQ0I/DnussRVx/TjxreZxUxY9OaAxWCYGyo4GJwqyAVbOvgzdpEfV
Z2YOz+mR3tszITZFyR428OLeBTXUHlkOxSFyVWcnU6dvqzSvsFwZ0lpcwU8srFy+iK5zhaFV
0VFwwBsffCUrDeB3RYva/050bXdBZd9U53qeg41KWdR5ispTEwffqJD5yYENst6BQosbIt8H
AJ6LLCMc8NDB5FCAq/wpHBHeOg6tLdogm2g3EyoQORFSWY646CbBoQi7dFc5NjGaqc+kTmT0
IJhs5G8sQIB2GofCtSWMc2yQKSQqgg1rRVof3WcpiUJkH6/yeue524pI0QPdwQjqAGkavypC
BAd4eEWmYxXjvNjUrWKk6YyaYDkk+NyqElw2VxhWp22VIPOgrDZo2zYeSkVbvAk9HxkPDgTI
+AkgxBopVBPXVyvgCfQLe4OjpkRc/RQ9bTqsnJpQ9t2s9yfwxDFuyqzwsBP4urgDPBsHM0ia
W7RLwo0WjLOtLCoTMkl/oC7agwzw1hYghvs/lmPCyAQZqlEPDPmWsip3Y39tGHK21QcOMmUY
4LlqBBYFiC6egyzl4JosiKsVBJuxAtv6mxhrARMwwmgYQCPz3h7KWS2PRBqPj93dTRyU9jG2
UTEZLsKWfrZeuV6SJW6Cr2a966BhNxWOOPESbJ5wKL4jzLPhSCzm45NgUKeeg3keUBn0gD4K
4nurk5WSOMAqTw8VWd1uaNWygxWydQAdmXicjizGjB44qMwOyGrdwRcuaU/89LHIl4FREiEy
5pm6HiYenCn4rVtmdEmYMO1mWPcCtHHXJGjO4WVY8ziEHfc1BmSrE3QQh6XKwhIv4ySkvaXK
DIwsHgQULvYtHrCIJDpLfkAOLeajk0rnPitXdFCnDwN0v43r4fmUd3RcV9lU+U6UKl0hCaCU
2e3zGowApaUDnOjS663qf3NMZuM6ZSRfuoKbDYPL3rZf4lLV/rZvIMJq3t4uRa89OGOMu7To
2I6QWjT/sCRgwAl+Zcg/TyLv8cuyIRDrczWdvVYIo9pOBAbVvpuu36fCc0uwbrpTccktdHjm
gVe0bM67Lv80QqtthiAz3IEups7JPQTzipAyVVeYIYlu7RHeDap2qsGbnq5vyC2jbAFu+p2p
06wxzC2YPwrG4QfOAMpO394w807JsJz3/KsZW2eE9hCJotWOkY0mB4xL8qiPNIvWT3ZGP03K
2Avzq8wI1M0lvTYn1LndyCPMqm7bpoFYEvA5ZkgRoxqO8Cr39PH5rz/f/710MDQvd82OTqmR
4uUdj9KoeZrxK557iSMf6ZH5FKVYZc3dkqWsThluuiOfulZKlW9dWJWlQ2Us8cTzWBQdPAmu
MkmF3NXGXxCTs/GNBekSdnb1hwHtkC6np/X6pOTTCQLnGr02otlZuDUBfK5MWhYVmKFwqupl
lNFjJvRZcsu35Eb8JDCT8Ru8xFaHvgWf+0zYUg3wweJN1mmekSz7XUFb4q03OT91zdgmbPHa
xqw4rb1wDdZrzvIv6Y4tspYMIt9x8n5rNrOA8JC2NKx5Zns4bQr50FrNNOHyy/V21pyTWNZE
Ug4tMosOLeO51aOtpREq3PVkl2iBP35IKq4YCedg17fUqj7zAZ2KiBzRNYrAsiVMSnIWxNgL
DCITY0ODDbytS8WwRbUZ5sfbWPQKUjWQjLX+GgU6MydGT+LY1u8M3UhU/VbJ4RGbt3nLDnr+
2qogtpcqL/Qc62IDgQq05tcFiR03MYrO61vquZI4Kir98sfT9+c/5/WePH37U1XZJUVLkH0p
o8JQYFThuZMN41CyeTP2mPbb88fL2/P73x8P+3e2zXx513eaaYtq2XJWVDnb7kDQwZYK8FzT
9H2x5ZbrQuXp/cvL5+8P/cvry+f3Lw/bp8//+fr69OVZEZtVl488C1Lw6PJKVvNgzTh+CuBe
sEvcIhlAQ5ODk7gVq6EbuyVVitYAgKUKIFhe/uvvL59Budsa/KLaZYZAxSmjxt9UBFDT3o9R
67+24gLMqFGoJ0qpl8TOSmA1xsS9RTkW83/OkG3C2K0u2BDzUrgOxTxmM01qdaiNEyZKRoul
3ZKN23QlxJsMMgmqyTmhehBvyE8KQYaFyJJBM92d6CGWXYQZyk2gjyRxQ/zGksNlbcsPXsI0
DRqFKG2jEEC0ZCrjQMGUrS8IfpkJMEvRlqhnOJatWPU+ndLuqFoDSo6yJaBVrRN6Pc7vfGSA
cVqR3EeW23agF9wtnsZGDvRijJrg4F5D3nC60Ja3gZr1FWBcm5ZUTaZroQB0ZCcoa7clSVsl
+jvwTMbvjCc8crBJzsd41lzRqVxnxZgPQE2CJTXZOLFZL0727PXi+Aa/35xx7KGJozTy1Ucm
ThvPEepUyR+5MTluwgapzkWbd9wCylIUyNvmF9iSXcg+TOy2iieZNHRVIu2H5WwQSi56Qzin
7rQYqELZ2qxKn5P1pbkvgjga7vBUIer6nGPHa8KmiKfX0Yyslm6H0LmzSbDjKEHvFgCkxS2t
fD9kp/iepHrEPMDL1t8Etg6Xql4/jQzL6mROyzYtmdyPXee0feQ6oXZtLFSdXHypFWBs+7CW
yu8zdbPYZDndc7G3jREGvfdFsoI33bfvuzJj3M3sxJBEq80QyvpLqodTzQ1Dw4x902RiKxyq
gjSelc1bE55MYunJFt+WcUDQxcX0VDK5lK4X+6ODQnVuVX7o++Y8uuPLiLNUqIE/X3SkCY8q
7EjLDYyIdegIrfUn6YO49LB3QN7iKnQdYwiBZg42t4SIzfI51T6tGBygwWEkCBfiZilwlYO0
VCJ2gcu035hpSyFsMuuQtC7fw52n/mY7Ea3G4TOHiLV2bkqa7pWZMzOAQ54Td8FV96cqtxQE
d8D8CnjiWy11FgYWUEpokkQhCmWhv9Ee9hSMC9urhS7lYQPDHgZ1lsjHS2cYHgHHYHHx5Lu0
ZsedEJc2ZjaLy42ZoejLje+gfcegyIvdFJk6sERE/oClgl0rdtE0gFg6k2s0r48FsKhLiI6o
as8KQokfJhsbFMURBi0lRB0L+R6HtAIkuCjAHmoNnsjB2jHLlThkm4kr+tYKkzza6CdnHY8T
3wYl6tO/AjGp1EVHGxAPz05Iskhu7e70CHHssVTtOUmcCP3+OZTYU21w6FJhmfHgzNJ9ANLX
iAEgxmVT5J5ZlkLmjDGpIHRZ92H1U6Q2FPN8fHIJOQwfkVGws2NJhHcHphpvY3N9XIfHYPOC
9XUAM6ZcoNh1gMIkxCesC82Xax0JbWlgh50RshDaGKmyHMk6Ih0DdrjreY6D+z+LZ3qIUoXd
rPMbtf23p69/wc3hwh9DulcUttkPePYwCFT7BjgJVRaWyP8T9mzLjeM6/oofZ6p2am35mt2a
B1o3c6Jbi5Lt9Isq3XGnXScdp5z0OdP79QuQuvACeR5mOgYgEgRJECRBYLWwycdSpyGuTUtv
1IgJtq0iBAaDIPPXAXJvFxBGEQhK+iW2UHUuEVfawfI+ZmBLaj7YLUDG3YuLWvw504IEI1Ic
eIWhEXJqLQ1KTY/AjyblGHFGDzmC0ABkVB/74HMmTj7PSEHvhElkRk1B9H0q2oBuLjzadiij
xGiLsTH7220Kme/DUt6v/wkaV7vWBIIkZ0ED4yoAW69M7VRRGmFVWW2PMSpLykiekN0xnHx2
1j9oP71+vTydrpPLdfL99PIGf2FQMe0IGD9RYdfW0+nKZEFFwEpm5nDsMNmxaCowrO7IsLlI
VbLAGEEDTJqsRWWxDiMfBo1dl4I2grLgNbzPjYQNGqat6/bnMSsrNXqGW2/mF5Pf2M+n82Xi
X4rr5evp/f1y/R0DOH07P/+8PuLhun4z0ZaHh3qkhkF8ltf7kFHJ1KVg72ZLR9gAw3waO1I5
uaQ+K6q6DJuwLEf8VHpSQjSyPU/XH/99BoJJcPry8/n5/PpsjRj8+CArMLtQIpw8liamsfLP
20Ti0ETyTlxR59u/Qr8SRD09oYrAGbCYIuoUgYtK8oNKYacn+LzB936bsOy+CfeMDK8qZ19s
Po9QM/IQR/Qpi5zoKVuSu11E1kFizh9mq7Q0ZrGRKRWBPi/LWjSfwtSZTp+OtLsK4ra5v6NW
CNkKFbJXTVANXjAV6k2Om+D8/vby+GtSPL6eXiwtsy15EIdmN8iPB4xRBu/Sdk221/PT88kq
jmUME8Qc4Y8jpmQ2udpxweF/eKBrwDHimLHMtIB2qdlyCjP1NvNPlYspw4KppWQ4LGpRolrD
3mZElCqWvj3QquDGIClnHnWc3Q4Au49h9R/tRWYKRLC9cfYg+ePbIXCx7JPo+vjjNPny89s3
DFpnZxqItNPmbpmTi97Q2bC4+imm3AoNWJZXPHowQIH5Zhgg0lFpHwpS/Wnlw38RT5IStIXG
j0L4efEAXDEHwVNo/jbhlVUp4krM/8aPYYLOv832gYycDnTiQdA1I4KsGRFjNRdlDgZdCFqy
wp91BuZuEeKhXUjHJsV2g5HM46wJM7AEqVPyjsu8EAYjQRiBFofS9atmaQn59dbiGew3jPZk
cpsyvI4ig29i1zH/XkasNArHD1rbRRiIiidSIpVyN3GH3nhGTewyqfQMnovUs39DT0V5gxHd
8izDDjPG6MM2LEGbTs1x0kHl4PxltH8ssDugQF5kRCTsVBzORh3Zwjyfwj6IR/ubTHCmddUs
UHe1ZoFqo0B/UvK9yRACzCPQDugs7x2i7226Cr42ww4AKAk30+WaPgmWgwsDtowwbBmXPchl
WoH1sWiwrtBjp7XYx9UDqF+jKgUaGd+AtNrJMG0Kbba12HikmYijaxFzc3rO29GpgSzd3oMc
EbVg5vt62FZEcHNCwe9GRbvSGyCh5NMOnAacWdJAj6qAo7ZEZedHI6MYyY5tAHK+5aAXzJUi
C3NQodw3GLx/KHMDMIdl1aofQaqtdMUSb10mID95HuQ5/b4E0dVm5VEnVajYwMIJM3NxYOW9
pZvm9hrEyhRWzLEKx8L8Y4ekwq+ddoMxOTIzt2CGHqvF0lJ8XagFA9jeSdjrQAhTNcvTEYbS
LQhHN9IGmIxWFVtDt8PZA1VmpBe7MLRXTVbnzf3sjryFQF0qUzyZQzldz7TVoZ9kTeIHnaUx
1I1AP2FCtEdImo8JYJJFNJ16C6/SX+tIRCrAeIyjqbGrk5hqP19OP+3J3kUCGPB3HnmS32Hn
3tSsrQpyb5GasH0ce4u5xxYmWIuIrUHFKlzN06nDa3A3XVBbFESyVMxXd1E8XTmfpWI5nd1H
U2pWIMHuuJnr0UeGPjBE/cvFOwEhte7r7lwdDJ5TEx/YwewGjIyrQH1SpJu7xaw5GK7zA1qw
HSsZVaJ9e6nVZcfkM1CbjX5gb6HWVlAlTRKr+ZQ2IiwqOnOrRlRslkt6e2IQrUdy/w5EeeWR
u11NuLj1oMXnHvVrQ8J0lxy42oNY10lB4bbBajZdkzIv/aOfafYFWHMCozcMkF2QGoGoYTtK
nWqKvM7MF28IaHIhxj1eRGacDqsIyjxwz54BqDHEgyEyVlWGWVxp+UcBizn1+t+1+nbwvYOv
22nl1C3eTl8xTRXy4Jje+CFbyGSnBivML+sjAWqMHDkIldPMYgXTTdI+goisYTNELWZSBGFy
zzOzYhWO14ZhfvsHu2LoFME4dVwosfKWwCqozSVrAEHYcS6j5pq78w4KUhhtXojH0dSDQYlM
QrCJzMrCz/eh1bo4TLe8dHs4IkMMIgqKkEk67U/uH8hkQoA5sKTKC6veh1IdlBtQju9c7ILp
VGSIqQ482zGrjPswE7AxrOyyE79722iUnpDRbRQmy/e5VUge83YIm6W08Cb4a6y0jgJ+FJow
engUWVqCl3W6TcKCBd7YKECq+G4xvYU/gBmU3Bgo0jhW6X9/mPCHCJZXa7amHJ2d86iyJZDm
mCtrJAu1JKiTio8lBEaCrOJmXWBZhfcmCJQ+PoBLcnPIauDxhhZhxTBiss15AfMbzIyxrzBD
M9ismEPa/rDkKaMsL0SCcnC4bzOJ2+XIEEuJlblSx1fYg6BxQ4cFKK5IyJgKiC1TS6Ix5tVl
wtxq9cBbuqZNfirHyRibKSurv/IHZGioVoc6Kr3i9gQDRSFAGnY7qx1M6TGNVO3KWlRtIo3h
+FWDOhXXuMg1hb45lpqK8zSvHA105FlKe/0h9nNY5jc64fNDAOuZrY3Uw+pmV29JuA+so1uE
/GUtjok8nOvD4JoLfs+ZTOLMR3LAyVHv2g5dcdsLQPs8FM5KrnJAaxYFAjoNMmSvogwRmSqL
W5/mO9ja4XleErZHk5r5gQ9j7F0WAlV8CxMmExrvmGh2fmBgzPqszCDyyywDc8sPmyw8ULf/
6rXM+f3r6QVfAV1+vkthXd7wbs8STfccHM8tubDYDh4yhs8AYMeel8JmI6+os6UW0xx2HBPC
20UiaptIk1RUckQZaFjgBJ4sxBjPEJ9UqQQURtdlJuBg5SzvYI2/ZRE9ajAL2a2MNfLr1fo4
ncrOsQo/4gjY+fRoRYKQINBFcKy92XRXUGVjlNDZ6njja6SYr7z2Yw0RgWihXKpUjPC08GY3
mc7/qVX17VbVsznBlEg2sxnFUo+ABlE7DKQpN2y1Wt6tqe8P/8Tu7sBucIsVC3uqIVAG+01V
Is5+wLQvxP2Xx3c9S5Q5KX1K48sZrHKIWqM2SE1AJa/1VPRN0Or/M5FSqmDTGIeTp9Pb6fXp
fXJ5nQhf8MmXnx+TbXIvU5yKYPLj8VeXY+Xx5f0y+XKavJ5OT6en/51gUhS9pN3p5W3y7XKd
/LhcT5Pz67eLOexbOqe7FHj0RFmnwW2MsiY0DywJkhkHizE59XWwikXM6psOGcH6b2wVdCQX
gXFtrOPgb1bRKBEE5fRurMmIHfGk1cn+qtNC7HIyI7lGxhJWB4zmI89CZ7Oi4+9ZmdInHzpV
u3NrQIpkUmudFrbGTb1deUtLaDUzVm3+4xH9JbR87KZ6CfwNef4hkWiDW8MB4LwYe3wgP5LT
MSh9R5NJhPUw1cbHLIjDyl6uJCpAz/PSys+rHgq/PH7AvPgxiV9+nibJ46/TtZtTqdQBIPof
lyftTa0sEANP5pke01xWc/DnNusIc1h3KRTzI82TFH0bOhVlsq5Ws4mwrZn+eyu3YQunfCLl
OrjjmMXLGrIdFGxT3xa0jHS9clN4oBRlTvARDVoLsfZoX1E5ZmVWZ7JU09YhTcAw5SvPbAOA
9IjAUokHdaWf76h69yKMTVjJ86WtaJIwziszIJEEu2tXN0P9h7VPJjRVRDJ4ilkYD6y9r1z4
q4A3YcIsu0ieQAXQGQl7cDQKF/DPPqYuTiXT1jJelQzszT3flvJpiMlTfmAlCMQCm46KyiwS
YaUW2Igf0Z3LKkjgKWV0MKEPQHe0+Q8/y4YfxwYt2JX4r7ecHe01XoA9C3/Ml/q1ho5ZrKYL
qwtht9uAFDHYt2qV2Z07lov7kMr6J/uhSh3x4x567HRBFnnEU0VLJ4csTkJWWUPiKBe2VFfX
xfdf7+evjy9Ki9HzodgZzjpZXqjS/JBTT9KlWpXJlra1sa+v2G6f2xk2bXN1OjN57hW0A3Mv
4jXcHh+mCvp02S4CnVdGfKJdUmo3rNeL6WnlQbNHYLu1NKvTZltHETqAeFpnnK7nt++nK3TH
sOUw+yLC8ai/a9DN+TpwFsG4ROho2zqzecwcPTJvbem4dN/WY8HmgbW5zQrrRaCkxOo8u9O2
gW+zqc+KNFgu5yunVjCBPG/t2U1uwU2QjqksSWHGbZWyyu/rUUnJRL1jKpBv8Zo+F7CNtXoG
dg5NYm1c6yZEfW1TZn5qg4od2nmWCm9EvRX2lIiaMgMFbgNTvEbs7HQLFznUOx44HLQbEuuI
Av+MnF1+ByfWX5rO2gjRRPk2pM4iDRolO/r7cHS3pZOQUu0JOuGO1EA69BokbU/SpY/3Uk8S
wSiCsTSKtTtTQzm9quGG7qVbFjWVKb1BV13+I30hX3DB+CUTbla/3k5/+JTJVj0UmBbZL+ju
VujaF/RzXGUxBfKsZ/zIIZFZf0n1fNAX9oPc75sAPCEwIXy22EzNF/AprUbTMBUVJ1NI4Zkb
nlJpbhR4ZiUv9ylYY91LSMy2RFMnQyNwd0ADIovlrbuUL17yOGu2/IyJ+WqxZFZh0jlgSgHn
LlCFD9eB9lM8CYRxvTAckCX0ULLCAqnkf4by1+FjT0wljZ14RvGIcQ2oJ9o9Vr8qb4HLZR9E
mChwuSTDxA5YR04AXNlyQncB3ZDpgOpxqV0nOjeM1ekn4R6T0PHE+VCKbUk6yHRo42Wt6pb2
QXjFKv0yo8ctp049yj9krJqA+TNvIaabpSVp41WkhOjvxY0RHsBibHdUG11GLDzd2lESq+bL
O3sUEhGY1JBVr1HH2K98hg8WnUZXib+8m5Hh5/s5s/zb+WzMu0OxogVZsWavPGb78nJ+/ddv
s9+lfi3j7aS9wv2JeQApH4TJb8MV0u+6vlVixb0ItTBJLD59sfoH46Rttn1yRKy9up6fn13l
0p6620qsO4yXWaWtwjscLIN49OUKvMXDOkupUoNmF7Ky2sL+ZqT+wWGU5sEvamecdDhbCY1w
2V6FmCFZpNjObx+Yifp98qFkN/Rgdvr4dn75wEdo8gXV5DcU8cfj9fn08TstYbmbFtzwnTSb
wkDUbLQ1Bcs4ZVaj9yeGUrO8Sjn8P+NblgUUTI4ZzGo28GIjVbkkPjwWBs14BaFhy2lo6aac
4l8Fi3lGhwXsqVkQtPIj6xrQuj3r0qXVzjeulW3cjQztaXJcaPS3+c1CmgGAu1tdXSp+GYyc
9WpUe/UspdjbxC4pL3LznYONa0iL2qGyQvvReHmEP9IyUVJJbkyCihxsXJgOMRaK2sihXJry
GI7wss2OVUMeQoewBDawrOHtp/BL/ZpSooZb3r5chFMsVH5jJBRHAKZlWG1mmxYz3JMATlqN
REHQlPau13hl1UPdIauensHIcF43oVjCLDaeLiGsj80CFmkWJsLEmlnQ8UanZE0qYsDpHYZr
PAfYSjtGw5DRSKZxLkMp7JCwSeOU6r2BYigoOGA5vhWoooXqo6MjxEzFhK+DqFt+eiH5L+fT
64cmJCYeMtjgHFvCQRDWG+xelk3JeKAVua0j99JdFoqHU0OR4iChmmjrY3dw28PwaXiiX6/u
gsUCc4/2gHsxNTIoqN+NHKfTv8FgshAy0v1wpOVHLJ55m9VC21gNMGhbFf7p9UHxeYoC8jm3
D7gLfP5Ibdj0oIY1JuHmkXHKg3mVg3KP/pq8pBKTIkUAC0lLYZbGQt8EgEbwc91lpm6TSHdu
1gYC9jtHi7Ss9UUPQWm08hY2z7s95WHaEuB8akOfanNJPTvtBsr+fIUh4u742sepyv/DgQ0P
Lk3UFh/t664mLZxnRW2oqxaepkRa5/T89Xp5v3z7mOxg+3/9Yz95/nl6/yBcddUTBD0YpnK9
qoRf0EnGWoK64onuXaqgHfeDQ1YljQJtwSnl7aly3LkGbPLWev4YZxO8TBidToaXuE2kViAo
uAHzr+yVgix+mL9aEUDpM38XNqCqqyYRI7E7JGGEJCXleivR3Xqqanz9dn28np7+UNdkdoRb
5bbMSxejVVlVD43g7vP34PL6/HJyu/AexCtqMMLyLE5CXZsE7PPnJCQQd8u7AaoeNN5kSt4D
QGNpt3Aeo0ZN8JUtddwiUFuaccl5ts2zYOSDKhc7WN3tj0TqY9/7I1+xhNtf7BPBbWpt9rBR
XOqLkVqKkovUQ3loKjZH72t9CinIqKtFj1a7FVhkQIafw+Z+C+p5sblBlrKjTjm1SFMOsnaU
VYtEiRNM4lI4zmPBytaBy/5OHSbDvpo6g+hoxL4JsoKolQvWMXqjclCSY63ZeMulqVlbBGwg
OJGZQMcyLHg2nXtEszQCOv4BQTdb3apnqVtRLnp1PBLyGQi86fyGhDU6w2/GQc9n3vRmc+d0
vFSX7qgfKvZozCnCV55uvZi49XF+HMNtZqSMJO7OyPTo4DYEbo+42VqP+mjjvFu4+XiZpvVg
Y8kDQ5OosYIkd9i0SHzEYbIC2uA1KAvfm6/M2Ls2fuX4iVgU3CMDaTpUc3dc+eh97/ftsUUZ
MIFmK8FdUM2nU1f26KYqRTg1n4e36BjU2q4IbkgFDLvjwimW+4V6B0Bw+ElGSDZf1bfIv8o5
yfw9hrKsW09Am0dfOvpCy1c3hNoTuRJVmIA5rCpMqj6ia02DgDo86GQTLqhWpuin98kBZ7xZ
Lb01DSemPsJXU3dqI3w9JekTti18UsKZVPqBvtEwMCmBKatgSeo2sfKoQAf9WqnfCg+1gEnt
p4GDkT5W7VrkVhVUdxsyJt1QLhSwMm4fhoKDmhr0CoHG53i5ikYaYE7B+/R+MyU6DFZOd6bg
ckqvscIt+V79a5yJuNrJnfuoFUbHA4WodN1SVslmducZt38AAy6oMxtMNqO535Sb2WYTagD8
BQta5yjclyeWnmRSWfOws3r/aD0nTSOeff16ejldLz9OH8aej8G2f7by9I7uQHMXdOeAFkP2
vNfHl8vz5AM2lufn88fjC55PAwt2fbDqrPRi8HfDIwy8C9YbbMfCZAQt9CD/gFFnEb1wAbIh
Q4UAwsgUCr+9jc13x/SX8x9P5+tJpfwwWqBVVK3nZk0K/fj2+BUKeYVNyT+LYaa7wMrfJovr
xapjMZAMwT+qQPHr9eP76f1slHe3mRvfw+/F8L368PkXbLK/Xt5gU3Z6fb+440AFNFUu4aeP
/1yu/5Li+fV/p+t/TfiPt9OTbJxPtmh5J69/1a3P+fn7h1bLcEkvEu/v9d+O7BgI/N+nyen1
dH3+NZGjFEcx9/UawvV6aYxKBJhRHiWICvKkMHfm1xv3awDhM5yREhCrhqHkujy9X17w4u0f
u9sTd0Z3e2LmTa3hi7CZ68Xa3Z5N/sDJ/foEw1Um2um/VGEYRvKRAPIYc6dQ8XZ6/NfPN+QW
mgAD4u10+vrdSEWnDkJUQE+3v16frpfzk3FdWIVNHKRrK2Bqj+/iYNyIEp9k4UhYvjijuiSG
fW8RM4xtNShFjBQSmVFC4HfD4nTmrRb3TZQ4uG2wWs0X64WDwNgKi+k2oxFr4xxSwyzn1C2N
TkB+iuEoZqR/rkZgxKsw4Esavhih19N0a/DFZgy+cuCFH8CMWBBNKdlmsx6JZYN4sQqmHnNr
Avhs5tlBnCRmN5tNV2NjXFKIYOZtqHDXGsHcDCJiYEbiTPUEhIQlfE7yi5gltUftCKr1er4s
qU8Bs7mjg5q0JBgij36V2xEkYuNN3RFd+7OVEySrRayno3F5JEURwLdrMq15S3KQgRPyypx+
URLaUXSQONri/9VlElHkgSf+zNgJdBDTEkhz/ckf/rKjHTP+/5Q925LbuI6/0nWezqnamfH9
8pAHWZJtxaKkFmW3Oy+qPh2fxDVxd29faif79QuQugAU5MxWJZUYgCiSIgEQxEWVPrxHHBwi
ge1gXl8Rvw0UHBqVnCsakY60YDjZTXmTh/fo1fzTAZShJjK8Bhp22QUj08tpXFKNqJMHdjEs
tLQGOjmxGjAtTdcC0wzdIrqtOIWRazC6MHeAXa/+Zkwmh2VQ+Yo7SJ6apIay3EZNb+6EebHV
tVpxVIH3nniR26CN6fT/5bBYyyzMFLlKj5iHkNlQsmgiJmM3ZXyrjEJle/Nar1Mfa2PSkHWE
bANS7tqLozAxF/ScTuOn8zKWZSII4xjUhlWUagfYULbSF8HQpCyaKyRsJDEddY1mWX6qt6eL
BbWuGGi+Kshl0nr/OSr0vtP9Gm4KYfNyqSqK0zJf76JYuhUs/CEWPr3jWWe2WW8qMyzsGeVh
bD1S6BPOjNQMSEed3mZe4mlMktDBmMRs0pwD+X0Flm5ygtDLvKDTnN7neFQaV+Orx7yNkh2S
8zppDFylbfZ8dOaJ6MITyOjUcfQ+0d46NO5D0uQzWrsxet6zTYtdiFXSY6Gg/DbwMubmYqt4
JnF6x1RqXPj1xxP9l+BFbKZwoa5USvYUfk62m7LQu+UQTMpQeLnwEW31a3s/dOXmaFVU65W2
aVFbNtAa6rABeImvMt+dEH9bmBrb47XjjmL8JZICJOmoPPS6qlk6kxjnIFfetBQHu2Hd9jM5
FqYq6K26NdNqgpVCOwn56DYtiDC96qh6NqF9S+rtitw6vTpt3fJ6DSZyrdyovXxysa3lomWr
8jDFNB6+mws1OxjPufb17eCjjEUxVvsWMzmOy9W+KK5VgN8nUWEaaBdpfCyx3mObkK7tg7Ju
RUz01SexVU92qIYgizLpG/lb0DzC5m30ustg0kbedBEZhihQU2ZVHbSuRHBxETGfKgKGLS+d
CmsKmMwidV60W5mcRpJzpx/vMLoddJzdnnR8i9XHAYeFcjMv50ZYlSaIq6/T/efL5fnpxv/x
/PinzbmLNpRWJWif6OSwIygdTeHgIKL8wA/nA26rbHDaZNf13fvLGp8cJUlCCGxmP+nR7Chf
pVOSyBcv/rZ3oHcBY/bbSTKzo58/XqVqutCWzmF/LEZT4pwN0PBQCNAVLPoa2m7nQuE+iXqK
CW+tazHwzF8QqGIvq/0NRaHkWK9QVQS66CkOB2xpJWbljWBO98Tdz9ZNQcPY+fHGIG+yh28n
4x5MYq4re9Tl+f308vr8KHlF5CFm78FksR1zTv5yeevYjDUQ/lP/fHs/XW5SWNXfzy//QkPR
4/k/0JXAMTBffjx/A7B+9t12Vq/PD18fny8S7vy7Okrw24+HH/CI+wxhmMkxKnXuSZ41WE2W
XqJlRp1e5+Ft4ytnf8qlsSsklsOGvahQNKSJdRnu0YBb+izMkSNi8PKvafHMpIG9iGpzS9dU
pmNumLQhT+vo0M0wUI+yk26mnRAr24mv6RHFWD1N4V/vWN67ykbSacYSl17gl5/ZqbBGHLMR
LYRWgXm54QrYaCXjyXLm9ocoNLQ6cIUk9dHaDdigxmOxKl5LYOvsuv1pSu12G82LxXI+lhS6
ikCr6XQw6jRZhzQLTe6xXH0lt6QzBezcnHrY0wmM0AnPhAEzLayBlmJSDsTvTBZ3oOKNVW7/
KCVtswxr/7vW4jOsi00hRY3boiEZ8U7qO8EE5FJUz/aMo+2wXc2XX915HePxhNjyKgCvXF4D
ma1ppbwh9YCF3yN+mbtS/nA66D1NBt6I31oF3lgsCB+ARhnQCzcDGLJnSUY0875SNDubKSxq
Cu8YOZ+uwWH2sWt4mAkXvzvqYOn8dOu8W2CflWx39D/vhoOhXMJOgVIxFouYKm8+mZJvWAGc
6vMV0OkRgmei8wtgFhN6EQeA5XQ6dGLQK6gLIFxEHf3JgNaxBMBsRDusfW/MrJu62IFKyJy8
ELTypt07ob972WqdHdGwUrDoE7wCnfXclY6WQ5dUrAIOiMmcX+XCrDqPzpfS4jaIsUO6WMi1
yAG1FFPCI2LJDMu2hCoKJIncSCNEEvXZ2JOHHLiNgO+zW4LtcS5u0ijxML86e9oGaFYwcjnm
jyZzMSgUMYtph7ivMjsIu8FILFMNGLRtkTVnIAsOGM/GDLB0rgOUn42dOrQMNxnJOrEKk/LL
0I5cJEi8/Xwhul+asIsDqhHdiNqm/mUZyZ+1JTg4c64LmKqJ2BesdR74g8VQarFG0gv1GjbR
g9HQBQ9Hw/GiAxws9HDQaWI4WmibKN3pzHA27PEAMnhoazh1GtPzJXUiaAu4OxMBiCL2J9PJ
tbreiq1iU68boJvMgisd/+UH6P4Oj1mMZ42ngv/9dDGJYHTHwaCIPUxg0CbtbE+Rvl7I28u7
5Xz38GWxJB5CRseoDvu1abB6gCkQDk2Hm27PX6sOGxcae4onMQetmLVajVI9+UqpJsR6qXTT
QSug7AFLZ/V73XcawaszMix8qSuZGwKWKLUS2vyFMo4pNw6umsnKsPHx5LrBwN4qb/cgYxad
Ca0dTkA+PVhJJYun6cAp0hlMxzPZjwFRC0lkA2IyYu5L08lk5vxmfh/T6XKE4b00rVUFdToz
XY5lj3vEifeggJiNJjmfWOTnM+6eM50tHFE5nffk/EPUTJaigJiwVudLNhPz8YBJWR8DmjyZ
PcNGXogu1Wo2GnPfc5Aa06EogvxsMqe35AhYjkafiIPa14/L5Wd1pK9P++vX039/nJ4efza+
Tf+LDi9BoP/I4rimsoYjYwp5eH9+/SM4v72/nv/94RaQ9ILllCsMNmnd94e3028xtHH6ehM/
P7/c/BMa/9fNf5qXv5GX02W6ntiMBr90piJdMO5UPQsWccOx4/1jgbJOZlztZs4Dx1xPepx+
VmozFPVbwqs293kKBwbyrbL9eEDlSQUQGYh9WjwsGFT/WcKghaNEVGzG1iXK8uTTw4/370SO
1NDX95v84f10o56fzu9cxKzDyYS5LRoA2SFoDhgMud9VBRt1pcLH5fz1/P5TcJZTozEVxsG2
oE7/WxT+A6doQ5PRWkVBVNAyA4UeUf5lf/NJr2CMqWyLPX1MR3N23sDfo2Y2I9gz75j34XJ6
ePt4PV1OT+83HzCBwqqdiHEkFY4ffqPhrPOb97yCsZ7v1HFGeh4lB1xqM7PUmGGDIkZMo6Eo
aLvfdIDBcmoWaNHSilGcMKzSFuQToK1d5bpXo7mC82L5MsULPsPnd075LTYG5jqQjEleFujl
mOrzBrJkU74dzqfOb25f8NV4NFyIoTKAcWKKQHscyQdxQM1mU3kIVMWqis/IBec22cjLYFV6
gwGLxG00FR2PloOhdNjkJLSOnIEMqdChZpG4WxPAYtwuNjSftQf6fE9p+CwfyKl96v51siAV
OfOiB24z4eENaYYxJoQkg/ePBhymo+GQWqx0sRuPh1T39/V4Mpw4gDnROeoeogfudMbUAgMS
s9sAZjIds2SK0+FiRKTGwU9iPqBDqODsMGer8BDPhouuGUM9fHs6vVsDncBmd4vlnJrpdoPl
kjLaytamvA07MhJwjysvpXBtQ94GtuovZCc+GBapCrF4wpi5cirlj6ejiSyXK5Zk3mvE35WV
tFX+1NqfZQTnsy6SOCmrjx/v55cfp7/I9Ur09Pjj/NSZeGmjRIkfR0kzVtnVrSW3ttwyTwtT
wKbzyfu8mckMmWRy+T4ryFmKT+G9XmvJJswUtJfnd5By5475F47SiwG3gUyZ06sFkJAi1GKH
Y9dKghtD2jJZPLDnfrE3MGgudGOVLdEI1dVXX09vKKtFgbPKBrOBkvPFrFQ2EjVPyqhXXp6K
LLOuwkQ8ncTScyqLh1QJsr8d+6uFcXfNLB7zB/V0Rne1/e1K/AraJ+wRPZYtZtWmM+OSvtd0
wg9J22w0mElc40vmgcAkR8sKwMdcA8kONHrDE8YzdHmcHi+NrbH65M9/nS+oc6Jj4dfzmw0m
ERZAHAXocRQVYXmQTGo6X1PFVx+XLH00opuwoeJ0ecEjFV9r7WaIVGkyQ6d+us/iUFw1RaiI
G5qKj8vBjIkjlQ2o34L5TbZYAXuaCjzzm8qZpFixH2UUsDBvBGVRsslSMaMToos0jXkbeFvr
NmKSObkFsltBpsKe/JCsLiL8sFyKg6rNR2Q9AOOMpv2oITzesIV2Kk4iymTpo7nzEFjcxZwK
AMYLsxWouSo3WG3FO5ZJ/mnY8InM83cl81A20afA2/zICVuxcfWYi8kvxGJysO3CwkTg5mkc
80tKi/OK7VwunWjxqzAHCXSFYKuDXXmQlVNLEamjzBwsGotYRbfXCDJ/uDjKCqOlUKFOr/Ux
i3Th+dseXztLo1Mfw1muURRq3KOaWjy6RVzBFxEuS/9qT7/cJ9emogg3uVeuMiV5E60Vrzuv
/HLt7cI+33vEgxg/9KX5RfxdjkwuRL8VOe8rElXOY10Zur2/0R//fjNOLC1Tq/LnuDnJV74q
d2nimUzuiJS2+fYe3aHK0SJRJoM7HS9DYiM9DfiwYTOelcM4gwDUdeLMvYz4QiqfpVRTNp5a
tMStjONcLVhOr1ivwUiTizWcdBOz5B7z+t0nAaY/j9v79G7Ml5cEeRpJt86BR5zb0K8OAS3z
Pdj8fM1xhjA0+FEGe6XuOUin+9wPjU9BSoUQwbUZHZmpAKex2Mprx9lu1hqpo+7kAJB4peuo
rEqncWcWgmCVphCufeOFaV9xfr38z8Mr9alpXUICMayniupAXxBFl0nlNL8nED9Y0ZD9QEU0
eTP8rGTThYF8D71egEUlYZmkSRmuI9i8cWwCPqhnCRYEKqMVRvBEYjrC9V3przeNAGxnm8BL
X2FRP8n3aZOmmzhs41h+Ogi8mMDoF+v8345CRDs+7xUNTGJnIXVQJiCjynp1hap+X4fmkLGT
Ic4nboQM5B2GOmvh7FKcvr0+3PynXh2OlfyMgZqGldHjjE0MdYfFHd2kmDDNUcpWS3gsRiX9
9BWgPHpFwWRzjcCE9FjoXebQNZUO/T0waoljAsmYZRavAG3LXVTdHMNM3FYm/a1MnFZohydl
mPj5feaeTymFk3Xy8yoY8V8uBSZgX5lPQcLzQ0wTiQnQyYQ3QCDlG6vBoIsmZo2U4mlIm91v
RpHXvxullL5daw4zNEJHjvW4GlKE3O7h4N9DTb8Ue6hH10YUMABZV0FkX8KqzVqP2FoBvaoH
UqYjnyXEbBCN12Xpx3vk6MKLGmLMhN1p3WYmBXGwY8F0FMn546rI+2Y7ieJqCK2sGdkv8JMB
sCddqLRYasT1hVJTXV0khsisZ7n3dSPtvnP7Z1KGRcnn0HewmmsSfRseD2ycO1hIuULX8zKl
UTSYC7NEMMvzh+69GJV434Pv675O0iJaE04VuIDIAmyybPoBPIuQnFpwG1FaA8A4VVMayFjI
MGBE0i+xGENFj7vHDsJpqG/nWGyRh4SL3a5VAacr1ogBia482IBPw3ewAt9aT5ylvt5j8W5p
raQHOO5593y3NjBgXEGUwyop4R+2b1sSUEp4rY8qO8fjd5qRdq0tt6bHFQuyu1le6BXFFk5z
6Ub2Pq9pOpFyNSJd4TIvsR6pdC2DNKaWULvVW1i3VYITe2UHH/wGx6c/gkNgtIiOEhHpdDmb
DRyG/jmNI7Ey3Begdwq3BGvnc1rrZ6r/WHvFH0khv3ftMCul4QnG5Q4uCf6ucwz6aRBi1s9P
k/FcwkcpHgyxIMs/zm/Pi8V0+dvwH3QDtqT7Yi3dOyVFR8wZUH+2boPO77pH0bfTx9dn0O2E
aTACn0+oAe16YuQM8qB4SmIDxNM93X0GiFOEZWwjVjXBoEDdj4M8JAxtF+YJnW/HjFWojHfU
AH4hRCyNkUDy/cF+A5xttZY3XYUte/K72n8cWWhSS5pdcQ+ym0aopTnWPnHIvaDzmSuQ8ylr
5LpDHxrZIPO0raMDwm9b8FuESRJuFXZeaEB9jHzlDLD7uA98Quysvt17ess/cg2zstGwnCtP
WirLp8VWAqyompU6wpSu4jd3SU1avGuvpHRo17XVGVyqWgly4V9YcrAGHH+ZiNBUHNXxy/Wh
fNGFfH3WUExMgd2ViQH8cnWGQ7UKg4CG1LeTn3sbFYIOUAkzaOnTmFiwjx0ds7UnRQksPFks
K2dFbTNnUd8mx0kXNJNBzukp7zRvIWh7wDiUe6vHueg0aeAt4zTxpdLc3euDswf2/VMRHtNe
XdxmC5HZS+KMF38fRs5vdt9kIS7vpMiJS67vehJAW/JSNoXbrnU2L8OjWmZNHqDHioOviFBM
hDES0ckHrGQQAp0Eg5vDPErJ9QN+OfcnDpbNpVvIXu+TnIY+29/lht6hAACOKwgrd/mKudZX
5H1ss0Ifs7wwpRyIChZmW0dEVyBZ9tU0EV0M+Ks5K7btNFDZtG/wd6GHEbrlFjZ5P9U+871Y
lsEG3xHBFOnsyRY26vS2KrqxB467C+/lHWQJ/0antFrJMVAGW+vp7arwM1cj840KgryiwIiX
xKnq4hCCVljE9QFPWuKGShd5Ss9/FopLkpaCsdAUjuZdqFYwbNBn2QaxrcTi1jK48FgwQzzo
uB7jKJ6ru3Q/3TJzlqoBXF2olqJrd0toTQ74USvMskaNBLVSXk56LuQZ0fxvEYmpxBjJgrrB
ORi2fh2c7HPtEP2NLsrV1xySYV8XZ1e6KCaEc0gm/BsRzPRKw5KzsUOy7Gl4OZ71Nryc/nIq
ltQbnmOMr35Pj+dyNA8SwYkUV2MpHuJoI0OsPS8PClDOFzIFR9yB1q+SWBbFj9yB1Ii+D1rj
na9Zg6d97fV9xxo/54OqwZ2Jbgb2qw4OJ71z0rdRd2m0KHP3jQa673kEi+mAnucl7stMOZ4Q
FH3JS6clSIpwn6d8Lg0mT70i8hIBc59HcczvdGvcxgvjqy/c5GG44zON4MjHSumBNIYo2ffk
qGDDj3oqi9RExT7fRVqq7I0UaNggN30xqw0OP3uqOO1Or0+nHzffHx7/PD99a00VhVHlovx2
HXsb7eapeHk9P73/ab2XLqe3b91qRMY8uTPZMaiMs1dpMd6bHVCtrIRMY9VRoda4RTsUk+bE
i1d+Veu20FBrkb1PPKyrxUqf+M+Xl/OP02/v58vp5vH76fHPN9PvRwt/lQqxWLWn52YmTMx9
I9pcgTCDw69XhOy7VxRqrwtrLZesh3Ast418Gg5GzehAG4kyYEfoVqSYaM9DL7AXnbqnDHIC
+nqAz63SHhd1w/3Su0S85CA3FRVkC6/EqP7ODZYl1daIjzYYhYUtJD3bIbGzliYx+Wp2JrK0
U1u46lCKV/5WLbbVGCU3CA/9m+CQlt9SS38DbMx/9tN8Gvw1lKiskxO9c8ce2CNQvZ7U6fL8
+vMmOP3749s3tmXM7IJaFyaaXR3YVhCLRYj87hAbVL1yqt5KFkF8B8wVZpnjBn+OKZO01MBS
xJtah/RLSLln2yVYcutuZ/MUa/D11WexNNbyrbsPVwiY6HjtttBDugZ2+zfITBoeedVzQjcB
qEiU+3uz+t1pqfHW8NSUXeih4l/z07CzgWJPStlhMlFVS0+FKoal353JGnNlxOiItoNDvGxO
tTQH1W36oOCP12f8a2jylfhotjESQzKm5sAA4Fxb09qSgO7ktWCnbZscBbhyjyy1VNtos1Vi
hXUyrWZm8CZpjZkEnQ70IM3jZgg49TVL5E9uo7xNPYQM4gbDED9erMTZPjx948mN0nWBx9N9
Bg0UsGTSHrO5lwdX6Jo+IKrcYt67wtOsd5b5NSizW9I9LMnRgBiaQbJian5FCLOekrC9tOXB
i/fAYGvCu9u26hHjVkgLkiFNM9HLluLdNi2yHkMD1vBRgu7FmQW7wpyjOzeB7Fm7kcIk6JOE
2JVdGGaOncE6hWMwayMtbv759nJ+wgDXt/+6uXy8n/46wX9O74+///47qepbsdoCdIgiPNIs
ndVKa3Ot8T3SkDs9vLuzOOA56R16JvXubHOP3hFUWQ474ootxRj1QuKAZJrBae32paLt7UFd
HTUOw0x+GqWWl0WNGJE+nekA7BTQmsOSF9ZsJ6N6nvijM7WXmCNxCRgk7ZHRZmCuMB1qGAaw
VHI4AvT4r1Z82wqH3sHD3wO6Y+rQ/bZ4j9wR05EI1hsXYjwQIluxzOmRn0PPEzgoxd17XZCD
TNNx1gOiuwNxJr3VYEGooid+R3dgFPRpyS8KSarvQEDhrXBlXi3920qHzDvao0NpfUhAg8Pb
Genl9SyWYZ6bkKnaj4X6BiuZTL5gQEdBkZz4/3R8ZsjFdhS7SgRDWj3O7OZ+GuXtUNe73csz
bmgw4UXFb38yxBo3Eu8T625zrBDfH8PRKfHv5eTHpr53u/HIGbT5HJldC7kjptf7xL78OnaT
e9lWpqmPkmtnrQnI8i4qtjB/lF3Y91i0MloiEPhpHvxfY0e2GzmO+5VgviB3dx7mQT6qrImv
WHalkhcjk85sAmwnjRzYnb9fkpJsyaRrFggQFElLsixRvLUgQTc+8g+iJBVo2UjqHrStBP55
GjWldCyGaHtNF340ZJlTlrPXU7GKGtFHEVDwr8dNYODFUj4/QVO0sm7JTRX3H7Xno/CXDTlC
/l03jNEuPqiwWIBlgzi1mTtZnP+rDxa3sAjZ2Ny3c9/HsHk3tWpN0fAP4hFeWRUmJx8TOCZg
ZoGJbnS50OMiHEVoy+qPJ1B1jTmY6D2lJ3NRnPLEsNY8Gf8QHOMGI0wqiUR8UufXKMnHTYyj
kyPYBhhVkttVGPbZbhhsQTmvC/eZegWHRrt2ZuBVxMImoVtvwo+DcVU+3TSMMfGPj4KsQJt2
TICLFZXq5B0XoMPjMCBYe4E5sob6z0EQxiGTS1o6ed1b2YnyNynYk/zrlSxg/dPHZ2S1KK+z
PkjRwBGQTAHaSbgnCW4WN9MnM28GSWr1yE4w0JCJA2TvwReasNLCtYp2PPFWQLw8l+Q3HGaR
79FlGXZmh9/TnBd52coXvBLVNZD1zX7RJlkcNwtgovtoARFwGMIsDAJ16M21WQwxAuFBbhAI
VTrLx6ZI9cnZ1TndAI/6biTUAEy167f42g94XbG3p+M0bVrJImTfpl2+X5CasZhJCj9ba2hY
2GVBX6avxFrB3PGUeZb94kJLCsgPaG2CExATxRfiDzUSWQ1kDQ9v/xPZYqDTb7PInIG/D5kw
hsSo2lrY8OJjVUYGCyK7VbgHLWHdjPUg3lNB+PBZ3rJs7SUyVeptXclV+13PQ3ixQmCCwcys
URt7hMf2a9wnae9oJAu46so7b4PH7LapfcykceoLmQjCAuvhUzJ0zJJtpPEtOxr3WSJZI+hG
lZ7CFOJYyRkh6AVymmfWDLBPmf11qfGXyaYcRGeMK+zdd1GKDi21+SRhMg9W7MJdM/Z3bT4e
778fz4aNJQ6+1omMczvvVMaiLPH7GcNRZ2Hi14zI5UC2icL2d5hmKcFM8+hjd4Mhzu/sNDJy
9qCdKY6kaYXQ9gnbAKOocO/oGoQr2V5hm4eN093xlVFX+rCFGpeV02tEd4S9ugGPKZY+FDo7
xqG+xSD2SLLaghpmJgzTyM3T49c7Vg5gHjdko4HEBCccnOIo4AMCz71QxGLkLuUBpMgYjnez
ZAVMad5RnY84WtRFkcCZlBvKGybGITPh9cQxj9ostwsl+9YwJjy68OSymqyKwpsZUThC3gIq
xKZd8bRuYEtiBofNM5Xfw55Z2B7e0WpliQPLe54jFVQ0X2J//+23SfvC7zCJben7378+344e
396fjt7ej56f/v2LEgUjYpiWrWrD26RD8CmHR56NAMhJQYxPdVuEqtESwx8iqUYCctIuUjwn
mEg4OVLY0FdHotZGf922nBqAvAUMNxaGYxSDZfyl81QAVqpWW2FMDs47cwlFIvWYaUNeJrKD
Mqrt5uT0ezWUDBHLBQGQd48es5shH3KGoX98KVUO/nM5l0NfAKOJOLnFrEj//jlUJu1OY30Z
XfEBbMshdw8gr+afpd7qOvd7TH19PmPNnseHz6cfR/nrI+45vBb4Py+fz0fq4+Pt8YVQ2cPn
Q2gE9bOQSkKSH0paCe+bFgr+To/bprzDqyrXnzf5jd4J66pQcLTt/CskVDLz59uPMPPJ95Wk
/MP1fCZTYfnkacJgZXfLYK3UyV5oEM6T2061vtRA8fDxvDbsSvEmCwm4x86Xa21nKX1tJtB6
eQ9denYqzA2BbT0B1iwh5UdgEkpppwGyPznO9IYvU5FR+jXBt1V2LsAEOg2rAy9K0/zlugrv
TmWvheC47uiMOL0Qr6uf8HhRLduVhTqRgNCWBL444XMK4DMG7LdddMW351CtbcFuzpdfz/FV
Q/6AM8JOBOgoZpwE+AuBhSC81m6VCM3WQyKWffP4Lj1nr5GAJobXca0ihLrpfpGBWFmWeuX6
Jk9jejkMNiA48K2znO/nDf0XJuC6UPdKyhHwn1eVRkkrx8Jpztnmc1yTIdD5xlvKuza68yaG
j8bkp+7T8uNIym33yNtG/EgOvv6NPAH0ycR6jFLDOnAvYXHwad436CdhHWJ+0hL2/ZzvJJvd
tBwNQAvhgqiH1x9vP4/qr59/Pr37GszSoFRtNOhhKL8tx5B1CV0TMLCREEbk4RYjsUPCSOcV
IhjwD40XE6NeZzUBLkiNKr4fdoFiiRcrZMZLlvw7TzSdqHouqURpHEdBMQscw09fW20kiz0+
HOc44DoeWK4wM0ixzUHXOcQZdmOhN/X47epiz9dDiHUSv9TJxpTAglQ1LTGychrZcxk8l6bi
hXczwY2SOJTDgNj+/eriv6l8w2BEmZ7t93txBgl7ebqO9J3sNuL0TK3vNgdGij3sNofHiYbQ
8P5kZe6qKke9nHR5MrJIyHZISkdjhiQm218cX41pjrqxxmBXV9UmMDZcp+bbFLs7YS1nw4rU
f5Fw/XH0F9ajevnXqy1CSNG4kTPCptmNfYeVODJvuZg74ngTqM4OS5k14XjZ84zCZk+eH19d
BkaJps5Ud/ePg0lKumPS9P8HBW1ritiYR02mjutd4INxxmx9r5YW713RQCu1mKxvcVi0KeRJ
FrozjRiFTNggCZ+IsXohBi9mWtW+LlJgOqpxUpw7ZCqY/ef7w/vfR+9vX58vr6Ewn+i+y3d5
ZyIfwmx3n/GS44jePwwR9K5k03d12t6Nm66pFupxSFLm9QoWpnAceh16dj0Ki12h58P6dzi+
TfWy2pJHrYKDLect8BuFFYIxjbktdazYpsDS4ByLQCeXMQVXKaCffhjjp87ilD5SUw5aNh0J
sII8uZNybCKCc6F11d3ChjrQeKJlVT+NtJv02/yr1AnX1dJAi1FDpns/3eGYLILmnG7gnojE
1YahW8EEzb2BVEXPxyZ9hNp09BiOSeZ4dpcR6yEoE+VAhptbjqBSyyCzCeNAqES9v0fw8nds
EHEwqkoY37/rMFpdyslYDq86OdptRvfFUEm+NEdh4Ljgg0zSPxgs9vTObzxu73VUKG9CJIA4
FTHlfaVExP5+hb5ZgZ/z/S5YqSNn9wzuVKb31gFOrKDpspAVKAN8WwMXJHbZhT5VZCHAbsLq
ihaEbqVFWAP6+6pItEMnct007ShH3yIaD6G4npIt/IR5twoj9IL5uAlZdNlEnlT8LfIch6/L
uFZDWt5jRb8AAJMSXq6dZeG8djeLu+OrVkdFHhqdYXAWnLmxq8dgFG0p8iKDZTobyW1qcBaU
DvPUlzEAcDJW+VjDmscgkqB8JcUeBLzlf67WyFw59QEA

--VS++wcV0S1rZb1Fb--

