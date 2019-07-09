# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  return nil
end

def experienced?(candidate)
  return candidate[:years_of_experience] >= 2
end

def hundredOrMoreGithubPoints(candidate)
  return candidate[:github_points] >= 100
end

def knowPythonOrRuby(candidate)
  return candidate[:languages].include?("Python") ||
  candidate[:languages].include?("Ruby")
end

def appliedInLast15Days(candidate)
  return Date.today - candidate[:date_applied] <= 15
end

def overAgeOf17(candidate)
  return candidate[:age] > 17
end

def qualified_candidates(candidates)
  newArray = []

  candidates.each do |candidate|
    if experienced?(candidate) &&
      hundredOrMoreGithubPoints(candidate) &&
      knowPythonOrRuby(candidate) &&
      appliedInLast15Days(candidate) &&
      overAgeOf17(candidate)
      newArray.push(candidate)
    end
  end
  return newArray
end

def ordered_by_qualifications(candidates)
 return candidates.sort_by { |candidate|
  [candidate[:years_of_experience], candidate[:github_points]] }.reverse
end
# More methods will go below
