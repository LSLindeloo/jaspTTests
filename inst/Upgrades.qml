import QtQuick          2.12
import JASP.Module      1.0

Upgrades
{
        Upgrade
        {
	            functionName: "TTestIndependentSamples"
				fromVersion: "0.16.3"
				toVersion: "0.16.4"

	            ChangeRename { from:	"variables";										to:		"dependent"								}
				ChangeRename { from:	"groupingVariable";									to:		"group"									}
				ChangeRename { from:	"students";											to:		"student"								}
				ChangeRename { from:	"welchs";											to:		"welch"									}
				ChangeRename { from:	"mannWhitneyU";										to:		"wilcoxon"								}
				ChangeRename { from:	"meanDiffConfidenceIntervalCheckbox";				to:		"meanDifferenceCi"						}
				ChangeRename { from:	"descriptivesMeanDiffConfidenceIntervalPercent";	to:		"meanDifferenceCiLevel"					}
				ChangeRename { from:	"effectSizesType";									to:		"effectSizeType"						}

				ChangeJS
                {
	                    name:		"effectSizesType"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["effectSizesType"])
		                        {
			                            case "cohensD":	return "cohen";
			                            case "glassD":	return "glass";
			                            case "hedgesG":	return "hedges";
		                        }
	                    }
                }

				ChangeRename { from:	"effSizeConfidenceIntervalCheckbox";				to:		"effectSizeCi"							}
				ChangeRename { from:	"descriptivesEffectSizeConfidenceIntervalPercent";	to:		"effectSizeCiLevel"						}
				ChangeRename { from:	"descriptivesPlots";								to:		"descriptivesPlot"						}
				ChangeRename { from:	"descriptivesPlotsConfidenceInterval";				to:		"descriptivesPlotCiLevel"				}
				ChangeRename { from:	"descriptivesBarPlots";								to:		"descriptivesBarplot"					}
				ChangeRename { from:	"errorBarType";										to:		"descriptivesBarplotErrorType"			}

				ChangeJS
                {
	                    name:		"errorBarType"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["errorBarType"])
		                        {
			                            case "confidenceInterval"	:	return "ci";
			                            case "standardError"	:	return "se";
		                        }
	                    }
                }

				ChangeRename { from:	"descriptivesBarPlotsConfidenceInterval";			to:		"descriptivesBarplotCiLevel"			}
				ChangeRename { from:	"descriptivesBarPlotsZeroFix";						to:		"descriptivesBarplotYAxisFixedToZero"	}
				ChangeRename { from:	"descriptivesPlotsRainCloud";						to:		"descriptivesRaincloudPlot"				}
				ChangeRename { from:	"descriptivesPlotsRainCloudHorizontalDisplay";		to:		"descriptivesRaincloudPlotHorizontal"	}
				ChangeRename { from:	"VovkSellkeMPR";									to:		"vovkSellke"							}
				ChangeRename { from:	"hypothesis";										to:		"alternative"							}

				ChangeJS
                {
	                    name:		"hypothesis"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["hypothesis"])
		                        {
			                            case "groupsNotEqual"	:	return "twoSided";
			                            case "groupOneGreater"	:	return "greater";
			                            case "groupTwoGreater"	:	return "less";
		                        }
	                    }
                }

				ChangeRename { from:	"normalityTests";									to:		"normalityTest"							}
				ChangeRename { from:	"equalityOfVariancesTests";							to:		"equalityOfVariancesTest"				}
				ChangeRename { from:	"missingValues";									to:		"naAction"								}

				ChangeJS
                {
	                    name:		"missingValues"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["missingValues"])
		                        {
			                            case "excludeAnalysisByAnalysis":	return "perDependent";
			                            case "excludeListwise"			:	return "listwise";
		                        }
	                    }
                }
		}

		Upgrade
        {
	            functionName: "TTestPairedSamples"
				fromVersion: "0.16.3"
				toVersion: "0.16.4"

				ChangeRename { from:	"students";													to:		"student"								}
				ChangeRename { from:	"wilcoxonSignedRank";										to:		"wilcoxon"								}
				ChangeRename { from:	"meanDiffConfidenceIntervalCheckbox";						to:		"meanDifferenceCi"						}
				ChangeRename { from:	"meanDiffConfidenceIntervalPercent";						to:		"meanDifferenceCiLevel"					}
				ChangeRename { from:	"effSizeConfidenceIntervalCheckbox";						to:		"effectSizeCi"							}
				ChangeRename { from:	"effSizeConfidenceIntervalPercent";							to:		"effectSizeCiLevel"						}
				ChangeRename { from:	"descriptivesPlots";										to:		"descriptivesPlot"						}
				ChangeRename { from:	"descriptivesPlotsConfidenceInterval";						to:		"descriptivesPlotCiLevel"				}
				ChangeRename { from:	"descriptivesBarPlots";										to:		"descriptivesBarplot"					}
				ChangeRename { from:	"errorBarType";												to:		"descriptivesBarplotErrorType"			}

				ChangeJS
                {
	                    name:		"errorBarType"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["errorBarType"])
		                        {
			                            case "confidenceInterval"	:	return "ci";
			                            case "standardError"	:	return "se";
		                        }
	                    }
                }

				ChangeRename { from:	"descriptivesBarPlotsConfidenceInterval";					to:		"descriptivesBarplotCiLevel"			}
				ChangeRename { from:	"descriptivesBarPlotsZeroFix";								to:		"descriptivesBarplotYAxisFixedToZero"	}
				ChangeRename { from:	"descriptivesPlotsRainCloud";								to:		"descriptivesRaincloudPlot"				}
				ChangeRename { from:	"descriptivesPlotsRainCloudDifference";						to:		"differenceRaincloudPlot"				}
				ChangeRename { from:	"descriptivesPlotsRainCloudDifferenceHorizontalDisplay";	to:		"differenceRaincloudPlotHorizontal"		}
				ChangeRename { from:	"VovkSellkeMPR";											to:		"vovkSellke"							}
				ChangeRename { from:	"hypothesis";												to:		"alternative"							}

				ChangeJS
                {
	                    name:		"hypothesis"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["hypothesis"])
		                        {
			                            case "groupsNotEqual"	:	return "twoSided";
			                            case "groupOneGreater"	:	return "greater";
			                            case "groupTwoGreater"	:	return "less";
		                        }
	                    }
                }

				ChangeRename { from:	"normalityTests";											to:		"normalityTest"							}
				ChangeRename { from:	"missingValues";											to:		"naAction"								}

				ChangeJS
                {
	                    name:		"missingValues"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["missingValues"])
		                        {
			                            case "excludeAnalysisByAnalysis":	return "perDependent";
			                            case "excludeListwise"			:	return "listwise";
		                        }
	                    }
                }
		}

		Upgrade
        {
	            functionName: "TTestOneSample";	fromVersion: "0.16.3";		toVersion: "0.16.4";

				ChangeRename { from:	"variables";									to:		"dependent"										}
				ChangeRename { from:	"students";										to:		"student"										}
				ChangeRename { from:	"mannWhitneyU";									to:		"wilcoxon"										}
				ChangeRename { from:	"stddev";										to:		"sd"											}
				ChangeRename { from:	"meanDiffConfidenceIntervalCheckbox";			to:		"meanDifferenceCi"								}
				ChangeRename { from:	"meanDiffConfidenceIntervalPercent";			to:		"meanDifferenceCiLevel"							}
				ChangeRename { from:	"effSizeConfidenceIntervalCheckbox";			to:		"effectSizeCi"									}
				ChangeRename { from:	"effSizeConfidenceIntervalPercent";				to:		"effectSizeCiLevel"								}
				ChangeRename { from:	"descriptivesPlots";							to:		"descriptivesPlot"								}
				ChangeRename { from:	"descriptivesPlotsConfidenceInterval";			to:		"descriptivesPlotCi"							}
				ChangeRename { from:	"descriptivesBarPlots";							to:		"descriptivesBarplot"							}
				ChangeRename { from:	"errorBarType";									to:		"descriptivesBarplotErrorType"					}

				ChangeJS
                {
	                    name:		"errorBarType"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["errorBarType"])
		                        {
			                            case "confidenceInterval"	:	return "ci";
			                            case "standardError"	:	return "se";
		                        }
	                    }
                }

				ChangeRename { from:	"descriptivesBarPlotsConfidenceInterval";		to:		"descriptivesBarplotCiLevel"					}
				ChangeRename { from:	"descriptivesBarPlotsZeroFix";					to:		"descriptivesBarplotYAxisFixedToZero"			}
				ChangeRename { from:	"descriptivesPlotsRainCloud";					to:		"descriptivesRaincloudPlot"						}
				ChangeRename { from:	"descriptivesPlotsRainCloudHorizontalDisplay";	to:		"descriptivesRaincloudPlotHorizontal"			}
				ChangeRename { from:	"VovkSellkeMPR";								to:		"vovkSellke"									}
				ChangeRename { from:	"hypothesis";									to:		"alternative"									}

				ChangeJS
                {
	                    name:		"hypothesis"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["hypothesis"])
		                        {
			                            case "notEqualToTestValue"	:	return "twoSided";
			                            case "greaterThanTestValue"	:	return "greater";
			                            case "lessThanTestValue"	:	return "less";
		                        }
	                    }
                }

				ChangeRename { from:	"normalityTests";								to:		"normalityTest"									}
				ChangeRename { from:	"missingValues";								to:		"naAction"										}

				ChangeJS
                {
	                    name:		"missingValues"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["missingValues"])
		                        {
			                            case "excludeAnalysisByAnalysis":	return "perVariable";
			                            case "excludeListwise":	return "listwise";
		                        }
	                    }
                }
		}

		Upgrade
        {
	            functionName: "TTestBayesianIndependentSamples";	fromVersion: "0.16.3";		toVersion: "0.16.4";

				ChangeRename { from:	"variables";									to:		"dependent"										}
				ChangeRename { from:	"groupingVariable";								to:		"group"											}
				ChangeRename { from:	"hypothesis";									to:		"alternative"									}

				ChangeJS
                {
	                    name:		"hypothesis"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["hypothesis"])
		                        {
			                            case "groupsNotEqual":	return "twoSided";
			                            case "groupOneGreater":	return "greater";
										case "groupTwoGreater":	return "less";
		                        }
	                    }
                }

				ChangeRename { from:	"plotPriorAndPosterior";						to:		"priorAndPosteriorPlot"							}
				ChangeRename { from:	"plotPriorAndPosteriorAdditionalInfo";			to:		"priorAndPosteriorPlotAdditionalInfo"			}
				ChangeRename { from:	"priorAndPosteriorPlotsCredibleInterval";		to:		"priorAndPosteriorPlotCiLevel"					}
				ChangeRename { from:	"descriptivesPlots";							to:		"descriptivesPlot"								}
				ChangeRename { from:	"descriptivesPlotsCredibleInterval";			to:		"descriptivesPlotCiLevel"						}
				ChangeRename { from:	"descriptivesBarPlots";							to:		"descriptivesBarplot"							}
				ChangeRename { from:	"errorBarType";									to:		"descriptivesBarplotErrorType"					}

				ChangeJS
                {
	                    name:		"errorBarType"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["errorBarType"])
		                        {
			                            case "confidenceInterval"	:	return "ci";
			                            case "standardError"	:	return "se";
		                        }
	                    }
                }

				ChangeRename { from:	"descriptivesBarPlotsConfidenceInterval";		to:		"descriptivesBarplotCiLevel"					}
				ChangeRename { from:	"descriptivesBarPlotsZeroFix";					to:		"descriptivesBarplotYAxisFixedToZero"			}
				ChangeRename { from:	"descriptivesPlotsRainCloud";					to:		"descriptivesRaincloudPlot"						}
				ChangeRename { from:	"descriptivesPlotsRainCloudHorizontalDisplay";	to:		"descriptivesRaincloudPlotHorizontal"			}
				ChangeRename { from:	"testStatistic";								to:		"test"											}

				ChangeJS
                {
	                    name:		"testStatistic"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["testStatistic"])
		                        {
			                            case "Student":	return "student";
			                            case "Wilcoxon":	return "wilcoxon";
		                        }
	                    }
                }

				ChangeRename { from:	"wilcoxonSamplesNumber";						to:		"wilcoxonSamples"								}
				ChangeRename { from:	"missingValues";								to:		"naAction"										}

				ChangeJS
                {
	                    name:		"missingValues"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["missingValues"])
		                        {
			                            case "excludeAnalysisByAnalysis":	return "perDependent";
			                            case "excludeListwise":	return "listwise";
		                        }
	                    }
                }
		}

		Upgrade
        {
	            functionName: "TTestBayesianPairedSamples";	fromVersion: "0.16.3";		toVersion: "0.16.4";

				ChangeRename { from:	"hypothesis";												to:		"alternative"									}

				ChangeJS
                {
	                    name:		"hypothesis"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["hypothesis"])
		                        {
			                            case "groupsNotEqual":	return "twoSided";
			                            case "groupOneGreater":	return "greater";
										case "groupTwoGreater":	return "less";
		                        }
	                    }
                }

				ChangeRename { from:	"plotPriorAndPosterior";									to:		"priorAndPosteriorPlot"							}
				ChangeRename { from:	"plotPriorAndPosteriorAdditionalInfo";						to:		"priorAndPosteriorPlotAdditionalInfo"			}
				ChangeRename { from:	"priorAndPosteriorPlotsCredibleInterval";					to:		"priorAndPosteriorPlotCiLevel"					}
				ChangeRename { from:	"descriptivesPlots";										to:		"descriptivesPlot"								}
				ChangeRename { from:	"descriptivesPlotsCredibleInterval";						to:		"descriptivesPlotCiLevel"						}
				ChangeRename { from:	"descriptivesBarPlots";										to:		"descriptivesBarplot"							}
				ChangeRename { from:	"errorBarType";												to:		"descriptivesBarplotErrorType"					}

				ChangeJS
                {
	                    name:		"errorBarType"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["errorBarType"])
		                        {
			                            case "confidenceInterval"	:	return "ci";
			                            case "standardError"	:	return "se";
		                        }
	                    }
                }

				ChangeRename { from:	"descriptivesBarPlotsConfidenceInterval";					to:		"descriptivesBarplotCiLevel"					}
				ChangeRename { from:	"descriptivesBarPlotsZeroFix";								to:		"descriptivesBarplotYAxisFixedToZero"			}
				ChangeRename { from:	"descriptivesPlotsRainCloud";								to:		"descriptivesRaincloudPlot"						}
				ChangeRename { from:	"descriptivesPlotsRainCloudDifference";						to:		"differenceRaincloudPlot"						}
				ChangeRename { from:	"descriptivesPlotsRainCloudDifferenceHorizontalDisplay";	to:		"differenceRaincloudPlotHorizontal"				}
				ChangeRename { from:	"testStatistic";											to:		"test"											}

				ChangeJS
                {
	                    name:		"testStatistic"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["testStatistic"])
		                        {
			                            case "Student":	return "student";
			                            case "Wilcoxon":	return "wilcoxon";
		                        }
	                    }
                }

				ChangeRename { from:	"wilcoxonSamplesNumber";									to:		"wilcoxonSamples"								}
				ChangeRename { from:	"missingValues";											to:		"naAction"										}

				ChangeJS
                {
	                    name:		"missingValues"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["missingValues"])
		                        {
			                            case "excludeAnalysisByAnalysis":	return "perDependent";
			                            case "excludeListwise":	return "listwise";
		                        }
	                    }
                }
		}

		Upgrade
        {
	            functionName: "TTestBayesianOneSample";	fromVersion: "0.16.3";		toVersion: "0.16.4";

				ChangeRename { from:	"variables";									to:		"dependent"										}
				ChangeRename { from:	"plotPriorAndPosterior";						to:		"priorAndPosteriorPlot"							}
				ChangeRename { from:	"plotPriorAndPosteriorAdditionalInfo";			to:		"priorAndPosteriorPlotAdditionalInfo"			}
				ChangeRename { from:	"priorAndPosteriorPlotsCredibleInterval";		to:		"priorAndPosteriorPlotCiLevel"					}
				ChangeRename { from:	"descriptivesPlots";							to:		"descriptivesPlot"								}
				ChangeRename { from:	"descriptivesPlotsCredibleInterval";			to:		"descriptivesPlotCiLevel"						}
				ChangeRename { from:	"descriptivesBarPlots";							to:		"descriptivesBarplot"							}
				ChangeRename { from:	"errorBarType";									to:		"descriptivesBarplotErrorType"					}

				ChangeJS
                {
	                    name:		"errorBarType"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["errorBarType"])
		                        {
			                            case "confidenceInterval"	:	return "ci";
			                            case "standardError"	:	return "se";
		                        }
	                    }
                }

				ChangeRename { from:	"descriptivesBarPlotsConfidenceInterval";		to:		"descriptivesBarplotCiLevel"					}
				ChangeRename { from:	"descriptivesBarPlotsZeroFix";					to:		"descriptivesBarplotYAxisFixedToZero"			}
				ChangeRename { from:	"descriptivesPlotsRainCloud";					to:		"descriptivesRaincloudPlot"						}
				ChangeRename { from:	"descriptivesPlotsRainCloudHorizontalDisplay";	to:		"descriptivesRaincloudPlotHorizontal"			}
				ChangeRename { from:	"hypothesis";									to:		"alternative"
	            }

				ChangeJS
                {
	                    name:		"hypothesis"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["hypothesis"])
		                        {
			                            case "notEqualToTestValue":	return "twoSided";
			                            case "greaterThanTestValue":	return "greater";
										case "lessThanTestValue":	return "less";
		                        }
	                    }
                }

				ChangeRename { from:	"testStatistic";								to:		"test"											}

				ChangeJS
                {
	                    name:		"testStatistic"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["testStatistic"])
		                        {
			                            case "Student":	return "student";
			                            case "Wilcoxon":	return "wilcoxon";
		                        }
	                    }
                }

				ChangeRename { from:	"wilcoxonSamplesNumber";						to:		"wilcoxonSamples"								}
				ChangeRename { from:	"missingValues";								to:		"naAction"										}

				ChangeJS
                {
	                    name:		"missingValues"
	                    jsFunction:	function(options)
	                    {
		                        switch(options["missingValues"])
		                        {
			                            case "excludeAnalysisByAnalysis":	return "perDependent";
			                            case "excludeListwise":	return "listwise";
		                        }
	                    }
                }
		}
}